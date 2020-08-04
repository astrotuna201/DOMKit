
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit
// import ECMAScript

public enum BufferSourceOrBlobOrString: JSValueEncodable, JSValueDecodable, ExpressibleByStringLiteral {
    public static func canDecode(from jsValue: JSValue) -> Bool {
        return BufferSource.canDecode(from: jsValue) || Blob.canDecode(from: jsValue) || String.canDecode(from: jsValue)
    }

    case bufferSource(BufferSource)
    case blob(Blob)
    case string(String)

    public init(jsValue: JSValue) {
        if BufferSource.canDecode(from: jsValue) {
            self = .bufferSource(jsValue.fromJSValue())
        } else if Blob.canDecode(from: jsValue) {
            self = .blob(jsValue.fromJSValue())
        } else if String.canDecode(from: jsValue) {
            self = .string(jsValue.fromJSValue())
        } else {
            fatalError()
        }
    }

    public init(stringLiteral value: String) {
        self = .string(value)
    }

    public subscript(jsValue _: ()) -> JSValue {
        switch self {
        case let .bufferSource(v): return JSValue(from: v)
        case let .blob(v): return JSValue(from: v)
        case let .string(v): return JSValue(from: v)
        }
    }
}
