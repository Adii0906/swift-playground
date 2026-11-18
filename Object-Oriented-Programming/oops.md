# Object-Oriented Programming (OOP)

## 1. Object Lifecycle

During the lifetime of an app, we create and destroy objects.

- **Create:** Initialize (`init`) = Allocate memory.
- **Destroy:** Deinitialize (`deinit`) = Deallocate memory.

## 2. Automatic Reference Counting (ARC)

ARC keeps track of the number of references to class instances (objects) in memory.

- Create 1 object → Reference count becomes 1.
- Create 2 objects → Reference count becomes 2.

### Why should we keep ARC low?

The more objects an app manages, the more memory it may consume, potentially affecting performance.

To manage memory efficiently:

- Create objects only when they are needed.
- Release objects when they are no longer needed.
- Avoid keeping unnecessary objects in memory.

### Example: Moving Between Screens

Imagine an app with three screens:

1. The user is currently on Screen 1.
2. When the user navigates to Screen 2, Screen 2 is initialized when needed.
3. If Screen 1 is no longer needed, it can be deallocated.

This helps manage memory efficiently.

## 3. Stack and Heap Memory

There are two main types of memory:

- **Stack**
- **Heap**

ARC manages the lifetime of class instances, which are typically allocated on the heap.

### Stack Memory

Common value types in Swift include:

- `String`
- `Bool`
- `Int`
- `struct`
- `enum`

These are value types. When you modify a value type, you work with its value rather than modifying another variable's independent copy.

### Heap Memory

Class instances are reference types and are typically stored in the heap.

When you modify a reference type through a reference, you modify the same underlying object.

A reference acts like a pointer because it refers to an object stored in memory.

## 4. Multithreading and Memory

An iPhone app can run in a multithreaded environment.

- Multiple threads can execute simultaneously.
- Each thread has its own stack.
- Threads within the same process share the heap.

### Stack vs Heap

| Stack | Heap |
|---|---|
| Each thread has its own stack | Shared between threads in a process |
| Generally faster allocation | Allocation is generally more complex |
| Automatically managed memory lifetime | Requires memory management |
| Commonly used by value types | Commonly used by class instances |

**Key takeaway:** Stack and heap have different memory-management characteristics. Swift manages these details automatically in many situations, so you generally don't need to manually allocate or deallocate memory.