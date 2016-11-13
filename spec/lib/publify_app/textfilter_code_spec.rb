require 'rails_helper'
# require 'text_filter_textile'
require 'publify_textfilter_markdown'

describe 'With the list of available filters', type: :model do
  describe '#filter_text' do
    def filter_text(text, filters)
      TextFilter.filter_text(text, filters)
    end

    describe 'specific publify tags' do
      describe 'code' do
        describe 'single line' do
          it 'should made nothin if no args' do
            result = filter_text('<publify:code>foo-code</publify:code>', [:macropre, :macropost])
            expect(result).to eq(%(<div class="CodeRay"><pre><notextile>foo-code</notextile></pre></div>))
          end

          it 'should parse ruby lang' do
            result = filter_text('<publify:code lang="ruby">foo-code</publify:code>', [:macropre, :macropost])
            expect(result).to eq(%(<div class="CodeRay"><pre><notextile><span class="CodeRay">foo-code</span></notextile></pre></div>))
          end

          it 'should parse ruby and xml in same sentence but not in same place' do
            result = filter_text('<publify:code lang="ruby">foo-code</publify:code> blah blah <publify:code lang="xml">zzz</publify:code>', [:macropre, :macropost])
            expect(result).to eq \
              '<div class="CodeRay"><pre><notextile><span class="CodeRay">foo-code</span></notextile></pre></div>' \
              ' blah blah <div class="CodeRay"><pre><notextile><span class="CodeRay">zzz</span></notextile></pre></div>'
          end
        end
        describe 'multiline' do
          it 'should render ruby' do
            expect(filter_text(%(
<publify:code lang="ruby">
class Foo
  def bar
    @a = "zzz"
  end
end
</publify:code>), [:macropre, :macropost])).to eq(%(
<div class=\"CodeRay\"><pre><notextile><span class=\"CodeRay\"><span class=\"keyword\">class</span> <span class=\"class\">Foo</span>
  <span class=\"keyword\">def</span> <span class=\"function\">bar</span>
    <span class=\"instance-variable\">@a</span> = <span class=\"string\"><span class=\"delimiter\">&quot;</span><span class=\"content\">zzz</span><span class=\"delimiter\">&quot;</span></span>
  <span class=\"keyword\">end</span>
<span class=\"keyword\">end</span></span></notextile></pre></div>))
          end
        end
      end
    end

    it 'test_code_plus_markup_chain' do
      text = <<-EOF
*header text here*

<publify:code lang="ruby">
class test
  def method
    "foo"
  end
end
</publify:code>

_footer text here_

      EOF

      expects_markdown = <<-EOF
<p><em>header text here</em></p>

<div class=\"CodeRay\"><pre><span class=\"CodeRay\"><span class=\"keyword\">class</span> <span class=\"class\">test</span>
  <span class=\"keyword\">def</span> <span class=\"function\">method</span>
    <span class=\"string\"><span class=\"delimiter\">&quot;</span><span class=\"content\">foo</span><span class=\"delimiter\">&quot;</span></span>
  <span class=\"keyword\">end</span>
<span class=\"keyword\">end</span></span></pre></div>


<p><em>footer text here</em></p>
      EOF

      expects_textile = <<-EOF
<p><strong>header text here</strong></p>
<div class=\"CodeRay\"><pre><span class=\"CodeRay\"><span class=\"keyword\">class</span> <span class=\"class\">test</span>
  <span class=\"keyword\">def</span> <span class=\"function\">method</span>
    <span class=\"string\"><span class=\"delimiter\">&quot;</span><span class=\"content\">foo</span><span class=\"delimiter\">&quot;</span></span>
  <span class=\"keyword\">end</span>
<span class=\"keyword\">end</span></span></pre></div>
<p><em>footer text here</em></p>
      EOF

      assert_equal expects_markdown.strip, filter_text(text, [:macropre, :markdown, :macropost])
      assert_equal expects_textile.strip, filter_text(text, [:macropre, :textile, :macropost])
    end
  end
end
