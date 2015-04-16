//
//  ViewController.swift
//  IntroAnimationLogo
//
//  Created by Mauricio Lucon on 4/16/15.
//  Copyright (c) 2015 AppFact. All rights reserved.
//

import UIKit

@IBDesignable
class IntroView : UIView {


	var animationCompletions = Dictionary<CAAnimation, (Bool) -> Void>()
	var viewsByName: [String : UIView]!

    
    
	// - MARK: Life Cycle

	override init(frame: CGRect) {
		super.init(frame: frame)
		self.setupHierarchy()
	}

	required init(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)
		self.setupHierarchy()
	}

	// - MARK: Scaling

	override func layoutSubviews() {
		super.layoutSubviews()

		if let scalingView = self.viewsByName["__scaling__"] {
			var xScale = self.bounds.size.width / scalingView.bounds.size.width
			var yScale = self.bounds.size.height / scalingView.bounds.size.height
			switch contentMode {
			case .ScaleToFill:
				break
			case .ScaleAspectFill:
				let scale = max(xScale, yScale)
				xScale = scale
				yScale = scale
			default:
				let scale = min(xScale, yScale)
				xScale = scale
				yScale = scale
			}
			scalingView.transform = CGAffineTransformMakeScale(xScale, yScale)
			scalingView.center = CGPoint(x:CGRectGetMidX(self.bounds), y:CGRectGetMidY(self.bounds))
		}
	}

	// - MARK: Setup

	func setupHierarchy() {
		var viewsByName: [String : UIView] = [:]
		let bundle = NSBundle(forClass:self.dynamicType)
		let __scaling__ = UIView()
		__scaling__.bounds = CGRect(x:0, y:0, width:640, height:1136)
		__scaling__.center = CGPoint(x:320.0, y:568.0)
		__scaling__.layer.masksToBounds = true
		self.addSubview(__scaling__)
		viewsByName["__scaling__"] = __scaling__

		let fundo = UIImageView()
		fundo.bounds = CGRect(x:0, y:0, width:640.0, height:1136.0)
		var imgFundo: UIImage!
		if let imagePath = bundle.pathForResource("Fundo.png", ofType:nil) {
			imgFundo = UIImage(contentsOfFile:imagePath)
		}
		fundo.image = imgFundo
		fundo.contentMode = .Center;
		fundo.layer.position = CGPoint(x:320.000, y:568.000)
		__scaling__.addSubview(fundo)
		viewsByName["Fundo"] = fundo

		let brilho = UIImageView()
		brilho.bounds = CGRect(x:0, y:0, width:738.0, height:1252.0)
		var imgBrilho: UIImage!
		if let imagePath = bundle.pathForResource("brilho.png", ofType:nil) {
			imgBrilho = UIImage(contentsOfFile:imagePath)
		}
		brilho.image = imgBrilho
		brilho.contentMode = .Center;
		brilho.layer.position = CGPoint(x:-100.110, y:1194.000)
		__scaling__.addSubview(brilho)
		viewsByName["brilho"] = brilho

		let untitled1 = UIView()
		untitled1.bounds = CGRect(x:0, y:0, width:3404.6, height:354.0)
		untitled1.layer.position = CGPoint(x:1782.709, y:568.000)
		__scaling__.addSubview(untitled1)
		viewsByName["Untitled 1"] = untitled1

		let logo = UIImageView()
		logo.bounds = CGRect(x:0, y:0, width:2812.0, height:343.0)
		var imgLogo: UIImage!
		if let imagePath = bundle.pathForResource("logo.png", ofType:nil) {
			imgLogo = UIImage(contentsOfFile:imagePath)
		}
		logo.image = imgLogo
		logo.contentMode = .Center;
		logo.layer.position = CGPoint(x:1998.622, y:177.000)
		logo.alpha = 0.00
		untitled1.addSubview(logo)
		viewsByName["logo"] = logo

		let untitled = UIView()
		untitled.bounds = CGRect(x:0, y:0, width:479.2, height:354.0)
		untitled.layer.position = CGPoint(x:239.602, y:177.000)
		untitled1.addSubview(untitled)
		viewsByName["Untitled"] = untitled

		let roxoescuro = UIImageView()
		roxoescuro.bounds = CGRect(x:0, y:0, width:96.0, height:354.0)
		var imgRoxoescuro: UIImage!
		if let imagePath = bundle.pathForResource("roxoescuro.png", ofType:nil) {
			imgRoxoescuro = UIImage(contentsOfFile:imagePath)
		}
		roxoescuro.image = imgRoxoescuro
		roxoescuro.contentMode = .Center;
		roxoescuro.layer.position = CGPoint(x:431.205, y:177.000)
		roxoescuro.alpha = 0.00
		untitled.addSubview(roxoescuro)
		viewsByName["roxoescuro"] = roxoescuro

		let roxo = UIImageView()
		roxo.bounds = CGRect(x:0, y:0, width:96.0, height:326.0)
		var imgRoxo: UIImage!
		if let imagePath = bundle.pathForResource("roxo.png", ofType:nil) {
			imgRoxo = UIImage(contentsOfFile:imagePath)
		}
		roxo.image = imgRoxo
		roxo.contentMode = .Center;
		roxo.layer.position = CGPoint(x:333.938, y:191.000)
		roxo.alpha = 0.00
		untitled.addSubview(roxo)
		viewsByName["roxo"] = roxo

		let azul = UIImageView()
		azul.bounds = CGRect(x:0, y:0, width:96.0, height:298.0)
		var imgAzul: UIImage!
		if let imagePath = bundle.pathForResource("azul.png", ofType:nil) {
			imgAzul = UIImage(contentsOfFile:imagePath)
		}
		azul.image = imgAzul
		azul.contentMode = .Center;
		azul.layer.position = CGPoint(x:237.519, y:205.000)
		azul.alpha = 0.00
		untitled.addSubview(azul)
		viewsByName["azul"] = azul

		let verde = UIImageView()
		verde.bounds = CGRect(x:0, y:0, width:96.0, height:256.0)
		var imgVerde: UIImage!
		if let imagePath = bundle.pathForResource("verde.png", ofType:nil) {
			imgVerde = UIImage(contentsOfFile:imagePath)
		}
		verde.image = imgVerde
		verde.contentMode = .Center;
		verde.layer.position = CGPoint(x:142.886, y:226.000)
		verde.alpha = 0.00
		untitled.addSubview(verde)
		viewsByName["verde"] = verde

		let amarelo = UIImageView()
		amarelo.bounds = CGRect(x:0, y:0, width:96.0, height:213.0)
		var imgAmarelo: UIImage!
		if let imagePath = bundle.pathForResource("amarelo.png", ofType:nil) {
			imgAmarelo = UIImage(contentsOfFile:imagePath)
		}
		amarelo.image = imgAmarelo
		amarelo.contentMode = .Center;
		amarelo.layer.position = CGPoint(x:48.000, y:247.500)
		amarelo.alpha = 0.00
		untitled.addSubview(amarelo)
		viewsByName["amarelo"] = amarelo

		self.viewsByName = viewsByName
	}

	// - MARK: PlayAnimation

	func addPlayAnimation() {
		addPlayAnimationWithBeginTime(0, fillMode: kCAFillModeBoth, removedOnCompletion: false, completion: nil)
	}

	func addPlayAnimation(completion: ((Bool) -> Void)?) {
		addPlayAnimationWithBeginTime(0, fillMode: kCAFillModeBoth, removedOnCompletion: false, completion: completion)
	}

	func addPlayAnimation(#removedOnCompletion: Bool) {
		addPlayAnimationWithBeginTime(0, fillMode: removedOnCompletion ? kCAFillModeRemoved : kCAFillModeBoth, removedOnCompletion: removedOnCompletion, completion: nil)
	}

	func addPlayAnimation(#removedOnCompletion: Bool, completion: ((Bool) -> Void)?) {
		addPlayAnimationWithBeginTime(0, fillMode: removedOnCompletion ? kCAFillModeRemoved : kCAFillModeBoth, removedOnCompletion: removedOnCompletion, completion: completion)
	}

	func addPlayAnimationWithBeginTime(beginTime: CFTimeInterval, fillMode: String, removedOnCompletion: Bool, completion: ((Bool) -> Void)?) {
		let linearTiming = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)
		if let complete = completion {
			let representativeAnimation = CABasicAnimation(keyPath: "not.a.real.key")
			representativeAnimation.duration = 6.500
			representativeAnimation.delegate = self
			self.layer.addAnimation(representativeAnimation, forKey: "PlayAnimation")
			self.animationCompletions[layer.animationForKey("PlayAnimation")] = complete
		}

		let verdeOpacityAnimation = CAKeyframeAnimation(keyPath: "opacity")
		verdeOpacityAnimation.duration = 6.500
		verdeOpacityAnimation.values = [0.000 as Float, 0.000 as Float, 1.000 as Float, 1.000 as Float]
		verdeOpacityAnimation.keyTimes = [0.000 as Float, 0.385 as Float, 0.462 as Float, 1.000 as Float]
		verdeOpacityAnimation.timingFunctions = [linearTiming, linearTiming, linearTiming]
		verdeOpacityAnimation.beginTime = beginTime
		verdeOpacityAnimation.fillMode = fillMode
		verdeOpacityAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["verde"]?.layer.addAnimation(verdeOpacityAnimation, forKey:"PlayAnimation_Opacity")

		let brilhoTranslationXAnimation = CAKeyframeAnimation(keyPath: "transform.translation.x")
		brilhoTranslationXAnimation.duration = 6.500
		brilhoTranslationXAnimation.values = [0.000 as Float, 0.000 as Float, 833.965 as Float]
		brilhoTranslationXAnimation.keyTimes = [0.000 as Float, 0.962 as Float, 1.000 as Float]
		brilhoTranslationXAnimation.timingFunctions = [linearTiming, linearTiming]
		brilhoTranslationXAnimation.beginTime = beginTime
		brilhoTranslationXAnimation.fillMode = fillMode
		brilhoTranslationXAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["brilho"]?.layer.addAnimation(brilhoTranslationXAnimation, forKey:"PlayAnimation_TranslationX")

		let brilhoTranslationYAnimation = CAKeyframeAnimation(keyPath: "transform.translation.y")
		brilhoTranslationYAnimation.duration = 6.500
		brilhoTranslationYAnimation.values = [0.000 as Float, 0.000 as Float, -1187.441 as Float]
		brilhoTranslationYAnimation.keyTimes = [0.000 as Float, 0.962 as Float, 1.000 as Float]
		brilhoTranslationYAnimation.timingFunctions = [linearTiming, linearTiming]
		brilhoTranslationYAnimation.beginTime = beginTime
		brilhoTranslationYAnimation.fillMode = fillMode
		brilhoTranslationYAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["brilho"]?.layer.addAnimation(brilhoTranslationYAnimation, forKey:"PlayAnimation_TranslationY")

		let roxoOpacityAnimation = CAKeyframeAnimation(keyPath: "opacity")
		roxoOpacityAnimation.duration = 6.500
		roxoOpacityAnimation.values = [0.000 as Float, 0.000 as Float, 1.000 as Float, 1.000 as Float]
		roxoOpacityAnimation.keyTimes = [0.000 as Float, 0.538 as Float, 0.615 as Float, 1.000 as Float]
		roxoOpacityAnimation.timingFunctions = [linearTiming, linearTiming, linearTiming]
		roxoOpacityAnimation.beginTime = beginTime
		roxoOpacityAnimation.fillMode = fillMode
		roxoOpacityAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["roxo"]?.layer.addAnimation(roxoOpacityAnimation, forKey:"PlayAnimation_Opacity")

		let logoOpacityAnimation = CAKeyframeAnimation(keyPath: "opacity")
		logoOpacityAnimation.duration = 6.500
		logoOpacityAnimation.values = [0.000 as Float, 0.000 as Float, 1.000 as Float, 1.000 as Float]
		logoOpacityAnimation.keyTimes = [0.000 as Float, 0.308 as Float, 0.692 as Float, 1.000 as Float]
		logoOpacityAnimation.timingFunctions = [linearTiming, linearTiming, linearTiming]
		logoOpacityAnimation.beginTime = beginTime
		logoOpacityAnimation.fillMode = fillMode
		logoOpacityAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["logo"]?.layer.addAnimation(logoOpacityAnimation, forKey:"PlayAnimation_Opacity")

		let roxoescuroOpacityAnimation = CAKeyframeAnimation(keyPath: "opacity")
		roxoescuroOpacityAnimation.duration = 6.500
		roxoescuroOpacityAnimation.values = [0.000 as Float, 0.000 as Float, 1.000 as Float, 1.000 as Float]
		roxoescuroOpacityAnimation.keyTimes = [0.000 as Float, 0.615 as Float, 0.692 as Float, 1.000 as Float]
		roxoescuroOpacityAnimation.timingFunctions = [linearTiming, linearTiming, linearTiming]
		roxoescuroOpacityAnimation.beginTime = beginTime
		roxoescuroOpacityAnimation.fillMode = fillMode
		roxoescuroOpacityAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["roxoescuro"]?.layer.addAnimation(roxoescuroOpacityAnimation, forKey:"PlayAnimation_Opacity")

		let amareloOpacityAnimation = CAKeyframeAnimation(keyPath: "opacity")
		amareloOpacityAnimation.duration = 6.500
		amareloOpacityAnimation.values = [0.000 as Float, 0.000 as Float, 1.000 as Float, 1.000 as Float]
		amareloOpacityAnimation.keyTimes = [0.000 as Float, 0.308 as Float, 0.385 as Float, 1.000 as Float]
		amareloOpacityAnimation.timingFunctions = [linearTiming, linearTiming, linearTiming]
		amareloOpacityAnimation.beginTime = beginTime
		amareloOpacityAnimation.fillMode = fillMode
		amareloOpacityAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["amarelo"]?.layer.addAnimation(amareloOpacityAnimation, forKey:"PlayAnimation_Opacity")

		let untitled1ScaleXAnimation = CAKeyframeAnimation(keyPath: "transform.scale.x")
		untitled1ScaleXAnimation.duration = 6.500
		untitled1ScaleXAnimation.values = [1.000 as Float, 1.000 as Float, 0.141 as Float, 0.141 as Float]
		untitled1ScaleXAnimation.keyTimes = [0.000 as Float, 0.769 as Float, 0.885 as Float, 1.000 as Float]
		untitled1ScaleXAnimation.timingFunctions = [linearTiming, linearTiming, linearTiming]
		untitled1ScaleXAnimation.beginTime = beginTime
		untitled1ScaleXAnimation.fillMode = fillMode
		untitled1ScaleXAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["Untitled 1"]?.layer.addAnimation(untitled1ScaleXAnimation, forKey:"PlayAnimation_ScaleX")

		let untitled1ScaleYAnimation = CAKeyframeAnimation(keyPath: "transform.scale.y")
		untitled1ScaleYAnimation.duration = 6.500
		untitled1ScaleYAnimation.values = [1.000 as Float, 1.000 as Float, 0.141 as Float, 0.141 as Float]
		untitled1ScaleYAnimation.keyTimes = [0.000 as Float, 0.769 as Float, 0.885 as Float, 1.000 as Float]
		untitled1ScaleYAnimation.timingFunctions = [linearTiming, linearTiming, linearTiming]
		untitled1ScaleYAnimation.beginTime = beginTime
		untitled1ScaleYAnimation.fillMode = fillMode
		untitled1ScaleYAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["Untitled 1"]?.layer.addAnimation(untitled1ScaleYAnimation, forKey:"PlayAnimation_ScaleY")

		let untitled1TranslationXAnimation = CAKeyframeAnimation(keyPath: "transform.translation.x")
		untitled1TranslationXAnimation.duration = 6.500
		untitled1TranslationXAnimation.values = [0.000 as Float, 0.000 as Float, -1462.031 as Float, -1462.031 as Float]
		untitled1TranslationXAnimation.keyTimes = [0.000 as Float, 0.769 as Float, 0.885 as Float, 1.000 as Float]
		untitled1TranslationXAnimation.timingFunctions = [linearTiming, linearTiming, linearTiming]
		untitled1TranslationXAnimation.beginTime = beginTime
		untitled1TranslationXAnimation.fillMode = fillMode
		untitled1TranslationXAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["Untitled 1"]?.layer.addAnimation(untitled1TranslationXAnimation, forKey:"PlayAnimation_TranslationX")

		let untitled1TranslationYAnimation = CAKeyframeAnimation(keyPath: "transform.translation.y")
		untitled1TranslationYAnimation.duration = 6.500
		untitled1TranslationYAnimation.values = [0.000 as Float, 0.000 as Float, -152.017 as Float, -152.017 as Float]
		untitled1TranslationYAnimation.keyTimes = [0.000 as Float, 0.769 as Float, 0.885 as Float, 1.000 as Float]
		untitled1TranslationYAnimation.timingFunctions = [linearTiming, linearTiming, linearTiming]
		untitled1TranslationYAnimation.beginTime = beginTime
		untitled1TranslationYAnimation.fillMode = fillMode
		untitled1TranslationYAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["Untitled 1"]?.layer.addAnimation(untitled1TranslationYAnimation, forKey:"PlayAnimation_TranslationY")

		let azulOpacityAnimation = CAKeyframeAnimation(keyPath: "opacity")
		azulOpacityAnimation.duration = 6.500
		azulOpacityAnimation.values = [0.000 as Float, 0.000 as Float, 1.000 as Float, 1.000 as Float]
		azulOpacityAnimation.keyTimes = [0.000 as Float, 0.462 as Float, 0.538 as Float, 1.000 as Float]
		azulOpacityAnimation.timingFunctions = [linearTiming, linearTiming, linearTiming]
		azulOpacityAnimation.beginTime = beginTime
		azulOpacityAnimation.fillMode = fillMode
		azulOpacityAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["azul"]?.layer.addAnimation(azulOpacityAnimation, forKey:"PlayAnimation_Opacity")
	}

	func removePlayAnimation() {
		self.layer.removeAnimationForKey("PlayAnimation")
		self.viewsByName["verde"]?.layer.removeAnimationForKey("PlayAnimation_Opacity")
		self.viewsByName["brilho"]?.layer.removeAnimationForKey("PlayAnimation_TranslationX")
		self.viewsByName["brilho"]?.layer.removeAnimationForKey("PlayAnimation_TranslationY")
		self.viewsByName["roxo"]?.layer.removeAnimationForKey("PlayAnimation_Opacity")
		self.viewsByName["logo"]?.layer.removeAnimationForKey("PlayAnimation_Opacity")
		self.viewsByName["roxoescuro"]?.layer.removeAnimationForKey("PlayAnimation_Opacity")
		self.viewsByName["amarelo"]?.layer.removeAnimationForKey("PlayAnimation_Opacity")
		self.viewsByName["Untitled 1"]?.layer.removeAnimationForKey("PlayAnimation_ScaleX")
		self.viewsByName["Untitled 1"]?.layer.removeAnimationForKey("PlayAnimation_ScaleY")
		self.viewsByName["Untitled 1"]?.layer.removeAnimationForKey("PlayAnimation_TranslationX")
		self.viewsByName["Untitled 1"]?.layer.removeAnimationForKey("PlayAnimation_TranslationY")
		self.viewsByName["azul"]?.layer.removeAnimationForKey("PlayAnimation_Opacity")
	}

	override func animationDidStop(anim: CAAnimation!, finished flag: Bool) {
		if let completion = self.animationCompletions[anim] {
			self.animationCompletions.removeValueForKey(anim)
			completion(flag)
		}
	}

	func removeAllAnimations() {
		for subview in viewsByName.values {
			subview.layer.removeAllAnimations()
		}
		self.layer.removeAnimationForKey("PlayAnimation")
	}
}