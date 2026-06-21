.class public final synthetic Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget v0, p0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->mWebView:Lcom/motorola/camera/ui/widgets/OnlineHelpWebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->mWebView:Lcom/motorola/camera/ui/widgets/OnlineHelpWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearFormData()V

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->mWebView:Lcom/motorola/camera/ui/widgets/OnlineHelpWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->mWebView:Lcom/motorola/camera/ui/widgets/OnlineHelpWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->mWebView:Lcom/motorola/camera/ui/widgets/OnlineHelpWebView;

    new-instance v3, Lcom/motorola/camera/ui/controls_2020/OnlineHelpWebViewClient;

    new-instance v4, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0, v2}, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;I)V

    new-instance v2, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v1}, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;I)V

    invoke-direct {v3, v4, v2}, Lcom/motorola/camera/ui/controls_2020/OnlineHelpWebViewClient;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    sget-object v0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->PRODUCT_DISPLAY_MODEL:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    invoke-static {v0}, Lcom/motorola/camera/shared/DeviceProperties;->getString(Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->HARDWARE_SKU:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    invoke-static {v2}, Lcom/motorola/camera/shared/DeviceProperties;->getString(Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->RELEASE_VERSION:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    invoke-static {v3}, Lcom/motorola/camera/shared/DeviceProperties;->getString(Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->mTopicType:I

    const-string v5, ""

    if-ne v4, v1, :cond_0

    const-string v1, "help_modes"

    goto :goto_0

    :cond_0
    move-object v1, v5

    :goto_0
    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    sget-boolean v6, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v5, ".cn"

    :cond_1
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "/hc/apps/camera/index.php?v=10004724&app="

    const-string v8, "&t="

    const-string v9, "https://help.motorola.com"

    invoke-static {v9, v5, v7, v6, v8}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&m="

    const-string v7, "&sku="

    invoke-static {v5, v1, v6, v0, v7}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&os="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->mWebView:Lcom/motorola/camera/ui/widgets/OnlineHelpWebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->mWebView:Lcom/motorola/camera/ui/widgets/OnlineHelpWebView;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0603f4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->remove()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
