require File.dirname(__FILE__) + '/../spec_helper'

describe NestedForm::Helper do
  before(:each) do
    @helper = Object.new
    @helper.extend NestedForm::Helper
  end
  
  it "should pass nested form builder to form_for along with other options" do
    mock(@helper).form_for(:first, :second, :other => :arg, :builder => NestedForm::Builder)
    @helper.nested_form_for(:first, :second, :other => :arg)
  end
end
