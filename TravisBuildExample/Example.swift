//
//  Example.swift
//  TravisBuildExample
//
//  Created by Anton Efimenko on 11.12.16.
//  Copyright © 2016 Anton Efimenko. All rights reserved.
//

import RxSwift

struct Example {
	static func test() -> Observable<Int> {
		return Observable.create { observer in
			observer.onNext(1)
			observer.onNext(2)
			observer.onNext(4)
			observer.onNext(8)
			observer.onCompleted()
			return Disposables.create()
		}
	}
}
