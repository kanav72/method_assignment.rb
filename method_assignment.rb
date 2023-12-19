 # 1. Print all public methods of a class 
 # 2. Print all public methods of an instance of a 
class A
  def self.a; end

  def self.b; end

  def self.f; end

  private_class_method :f 

  def c; end

  def d; end
  private

  def e; end
end

def public_instance_methods(instance)
  p instance.class.instance_methods(false).sort
end

def private_instance_methods(instance)
  p instance.class.private_instance_methods(false).sort
end

def public_class_methods(klass)
  p klass.methods(false).sort
end
 
def private_class_methods(klass)
  p klass.private_methods - Class.private_methods
end
 
public_instance_methods(A.new) # => [:c, :d]
private_instance_methods(A.new) # => [:e]
public_class_methods(A) # => [:a, :b]
private_class_methods(A) # => [:f]