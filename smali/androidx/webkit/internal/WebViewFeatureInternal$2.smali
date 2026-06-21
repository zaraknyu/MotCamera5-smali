.class public final Landroidx/webkit/internal/WebViewFeatureInternal$2;
.super Landroidx/webkit/internal/ApiFeature$M;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput p3, p0, Landroidx/webkit/internal/WebViewFeatureInternal$2;->$r8$classId:I

    const/4 p3, 0x2

    invoke-direct {p0, p1, p2, p3}, Landroidx/webkit/internal/ApiFeature$M;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final isSupportedByWebView()Z
    .locals 2

    iget v0, p0, Landroidx/webkit/internal/WebViewFeatureInternal$2;->$r8$classId:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    const-string v0, "MULTI_PROFILE"

    invoke-static {v0}, Landroidx/webkit/WebViewFeature;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroidx/webkit/internal/ApiFeature$M;->isSupportedByWebView()Z

    move-result v1

    :goto_0
    return v1

    :pswitch_0
    invoke-super {p0}, Landroidx/webkit/internal/ApiFeature$M;->isSupportedByWebView()Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    const-string p0, "MULTI_PROCESS"

    invoke-static {p0}, Landroidx/webkit/WebViewFeature;->isFeatureSupported(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget p0, Landroidx/webkit/WebViewCompat;->$r8$clinit:I

    sget-object p0, Landroidx/webkit/internal/WebViewFeatureInternal;->MULTI_PROCESS:Landroidx/webkit/internal/ApiFeature$M;

    invoke-virtual {p0}, Landroidx/webkit/internal/ApiFeature$M;->isSupportedByWebView()Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Landroidx/webkit/internal/WebViewGlueCommunicator$LAZY_FACTORY_HOLDER;->INSTANCE:Landroidx/webkit/internal/WebViewProviderFactory;

    invoke-interface {p0}, Landroidx/webkit/internal/WebViewProviderFactory;->getStatics()Lorg/chromium/support_lib_boundary/StaticsBoundaryInterface;

    move-result-object p0

    invoke-interface {p0}, Lorg/chromium/support_lib_boundary/StaticsBoundaryInterface;->isMultiProcessEnabled()Z

    move-result v1

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This method is not supported by the current version of the framework and the current WebView APK"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
