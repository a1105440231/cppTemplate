package ${contractPackageName}

import com.jess.arms.mvp.IView
import com.jess.arms.mvp.IModel


/**
 * M：[${modelPackageName}.${pageName}Model]
 * V：[${pageName}Activity]
 * P：[${pageName}Presenter]
 * 描述：${description}
 */
interface ${pageName}Contract {
    interface View : IView

    interface Model : IModel

}
