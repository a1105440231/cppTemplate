package ${presenterPackageName}

import android.app.Application

import com.jess.arms.integration.AppManager
<#if needActivity && needFragment>
import com.jess.arms.di.scope.ActivityScope
<#elseif needActivity>
import com.jess.arms.di.scope.ActivityScope
<#elseif needFragment>
import com.jess.arms.di.scope.FragmentScope
</#if>
import com.jess.arms.mvp.BasePresenter
import com.jess.arms.http.imageloader.ImageLoader
import me.jessyan.rxerrorhandler.core.RxErrorHandler
import javax.inject.Inject

import ${contractPackageName}.${pageName}Contract



/**
 * M：[${modelPackageName}.${pageName}Model]
 * V：[${pageName}Activity]
 * P：[${pageName}Presenter]
 * 描述：${description}
 */
<#if needActivity && needFragment>
@ActivityScope
<#elseif needActivity>
@ActivityScope
<#elseif needFragment>
@FragmentScope
</#if>
class ${pageName}Presenter
@Inject
constructor(model: ${pageName}Contract.Model, rootView: ${pageName}Contract.View) :
BasePresenter<${pageName}Contract.Model, ${pageName}Contract.View>(model,rootView) {
    @Inject
    lateinit var mErrorHandler:RxErrorHandler
    @Inject
    lateinit var mApplication:Application
    @Inject
    lateinit var mImageLoader:ImageLoader
    @Inject
    lateinit var mAppManager:AppManager

}
