extension Optional: Sequence where Wrapped: Sequence {
    
    public struct Iterator: IteratorProtocol {
        public typealias Element = Wrapped.Element
        var underlying: Wrapped.Iterator?
        public mutating func next() -> Wrapped.Element? {
            underlying?.next()
        }
    }
    
    public func makeIterator() -> Iterator {
        Iterator(underlying: self?.makeIterator())
    }
    
}
