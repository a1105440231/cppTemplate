package ${ativityPackageName}

import android.content.Intent
import android.os.Bundle

import com.jess.arms.base.BaseActivity
import com.jess.arms.di.component.AppComponent
import com.jess.arms.utils.ArmsUtils

import ${componentPackageName}.Dagger${pageName}Component
import ${moudlePackageName}.${pageName}Module
import ${contractPackageName}.${pageName}Contract
import ${presenterPackageName}.${pageName}Presenter

import ${packageName}.R



/**
 * M：[${modelPackageName}.${pageName}Model]
 * V：[${pageName}Activity]
 * P：[${pageName}Presenter]
 * 描述：${description}
 */
class ${pageName}Activity : BaseActivity<${pageName}Presenter>() , ${pageName}Contract.View {

    override fun initView(savedInstanceState:Bundle?) = return R.layout.${activityLayoutName}

    override fun setupActivityComponent(appComponent:AppComponent) {
        Dagger${pageName}Component
                .builder()
                .appComponent(appComponent)
                .${extractLetters(pageName[0]?lower_case)}${pageName?substring(1,pageName?length)}Module(${pageName}Module(this))
                .build()
                .inject(this)
    }

    override fun initData(savedInstanceState:Bundle?) {

    }


    override fun showLoading() {}

    override fun hideLoading() {}

    override fun showMessage(message:String) = ArmsUtils.snackbarText(message)

    override fun launchActivity(intent:Intent) = ArmsUtils.startActivity(intent)

    override fun killMyself() = finish()
}
