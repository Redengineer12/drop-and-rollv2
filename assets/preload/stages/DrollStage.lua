function onCreate()

---Code by berserk

	makeLuaSprite('GardientFOREST', 'forestgradient', -300, -50)
	
	setObjectOrder('GardientFOREST', 0)
	
	scaleObject('GardientFOREST', 1.2, 1.2)

	addLuaSprite('GardientFOREST', true)
	
	setProperty('GardientFOREST.visible', true)

    makeAnimatedLuaSprite('waterfall', 'waterfall', 550, 100);
    
	addAnimationByPrefix('waterfall', 'idle', 'waterfall', 24, true);
	
	scaleObject('waterfall', 1, 1);
	
	addLuaSprite('waterfall', false);
	
	setProperty('waterfall.visible', true)
    
    setObjectOrder('waterfall', 1)

   	makeLuaSprite('forest', 'forest', -420, 120)
	
	setObjectOrder('forest', 2)
	
	scaleObject('forest', 1.1, 1.1)

	addLuaSprite('forest', true)
	
	setProperty('forest.visible', true)
	
	makeLuaSprite('leaves1', 'leaves1', -200, -100)
	
	setObjectOrder('leaves1', 3)
	
	scaleObject('leaves1', 0.7, 0.7)

	addLuaSprite('leaves1', true)
	
	setProperty('leaves1.visible', true)
	
	setObjectCamera('leaves1','hud');
    
	makeLuaSprite('obj1234', 'BGBlack', -400, 0)
	
	setObjectOrder('obj1234', 4)
	
	scaleObject('obj1234', 2.5, 2.5)

	addLuaSprite('obj1234', true)
	
	setProperty('obj1234.visible', true)


---PART 2
    
    
    makeLuaSprite('RegularSky', 'RegularSky', -170, -150)
	
	setObjectOrder('RegularSky', 0)
	
	scaleObject('RegularSky', 1.1, 1.1)

	addLuaSprite('RegularSky', true)
	
	setProperty('RegularSky.visible', false)

   	makeLuaSprite('mountains2', 'mountains2', -100, 489)
	
	setObjectOrder('mountains2', 1)
	
	scaleObject('mountains2', 1, 1)

	addLuaSprite('mountains2', true)
	
	setProperty('mountains2.visible', false)

   	makeLuaSprite('mountains', 'mountains', 100, 389)
	
	setObjectOrder('mountains', 2)
	
	scaleObject('mountains', 1, 1)

	addLuaSprite('mountains', true)
	
	setProperty('mountains.visible', false)
	
	makeAnimatedLuaSprite('sea1', 'sea1', -100, 700);
	addAnimationByPrefix('sea1', 'idle', 'sea1', 24, true);
	
	scaleObject('sea1', 1.2, 1);
	
	addLuaSprite('sea1', false);
	
	setProperty('sea1.visible', false)
    
    setObjectOrder('sea1', 3)
    
    makeLuaSprite('sand1', 'sand1', 100, 1000)
	
	setObjectOrder('sand1', 4)
	
	scaleObject('sand1', 1, 1)

	addLuaSprite('sand1', true)
	
	setProperty('sand1.visible', false)

    makeAnimatedLuaSprite('fireleaves', 'fireleaves', -150, -98);
    
	addAnimationByPrefix('fireleaves', 'idle', 'leaves', 24, true);
	
	scaleObject('fireleaves', 0.7, 0.7);
	
	setProperty('fireleaves.visible', false)
    
    setObjectOrder('fireleaves', 5)
    
    setObjectCamera('fireleaves','hud');
    
	addLuaSprite('fireleaves')

    makeLuaSprite('RegularSkyF', 'Firesky', -170, -180)
	
	setObjectOrder('RegularSkyF', 0)
	
	scaleObject('RegularSkyF', 1.1, 1.1)

	addLuaSprite('RegularSkyF', true)
	
	setProperty('RegularSkyF.visible', false)

	makeLuaSprite('obj1', 'obj1', 0, 200)
	setObjectOrder('obj1', 6)
	addLuaSprite('obj1', true);
	scaleObject('obj1', 0.85, 0.85)
	setProperty('obj1.visible', false)
	
	doTweenX('bgMove', 'obj1', 300, 12, 'linear')
	
	makeLuaSprite('obj2', 'obj2', 0, 300)
	setObjectOrder('obj2', 7)
	scaleObject('obj2', 0.85, 1)
	addLuaSprite('obj2', true);
	setProperty('obj2.visible', false)
	
	doTweenX('bM', 'obj2', 300, 12, 'linear')


---PART3


	makeLuaSprite('sand2', 'sand2', -200, -50)
	
	setObjectOrder('sand2', 0)
	
	scaleObject('sand2', 1, 1)

	addLuaSprite('sand2', true)
	
	setProperty('sand2.visible', false)

    makeAnimatedLuaSprite('sea2', 'sea2', -930, 496);
    
	addAnimationByPrefix('sea2', 'idle', 'sea2', 24, true);
	
	scaleObject('sea2', 1.1, 1.1);
	
	addLuaSprite('sea2', false);
	
	setProperty('sea2.visible', false)
    
    setObjectOrder('sea2', 1)

    makeLuaSprite('RegularSkyFF', 'Firesky', -700, -180)
	
	setObjectOrder('RegularSkyFF', 0)
	
	scaleObject('RegularSkyFF', 1.1, 1.1)

	addLuaSprite('RegularSkyFF', true)
	
	setProperty('RegularSkyFF.visible', false)

	end
	
	
	function onTweenCompleted(tag)
	if tag == 'bgReset' then ---thanks deh4nk for this code
		doTweenX('bgMove', 'obj1', -3700, 12, 'linear')
	end
	if tag == 'bgMove' then
		doTweenX('bgReset', 'obj1', 1000, 0.001, 'linear')
	end
	if tag == 'bR' then
		doTweenX('bM', 'obj2', 2500, 16, 'linear')
	end
	if tag == 'bM' then
		doTweenX('bR', 'obj2', -3000, 0.001, 'linear')
	end
end

function onStepHit()
        if curStep == 64 then
        setProperty('obj1234.visible', false)
        end
		if curStep == 352 then
	    setProperty('sea1.visible', true)
	    setProperty('sand1.visible', true)
        setProperty('mountains.visible', true)
	    setProperty('mountains2.visible', true)
        setProperty('RegularSky.visible', true)
        setProperty('GardientFOREST.visible', false)
        setProperty('waterfall.visible', false)
     	setProperty('forest.visible', false)
		end
		if curStep == 1215 then
		setProperty('RegularSkyF.visible', true)
	  	setProperty('RegularSky.visible', false)
	   	setProperty('fireleaves.visible', true)
	   	setProperty('leaves1.visible', false)
	   	setProperty('obj1.visible', true)
      doTweenX('bgReset', 'obj1', 1000, 0.001, 'linear')
      setProperty('obj2.visible', true)
      doTweenX('bR', 'obj2', -3000, 0.001, 'linear')
	   	end
	   	if curStep == 2606 then
		setProperty('RegularSkyFF.visible', true)
		setProperty('sand2.visible', true)
		setProperty('sea2.visible', true)

	  	setProperty('RegularSkyF.visible', false)
        setProperty('mountains2.visible', false)
	    setProperty('sea1.visible', false)
	    setProperty('sand1.visible', false)
	    setProperty('mountains.visible', false)
	    setProperty('obj1.visible', false)
      doTweenX('bgReset', 'obj1', 1000, 0.001, 'linear')
      setProperty('obj2.visible', false)
      doTweenX('bR', 'obj2', -3000, 0.001, 'linear')
	end
end
