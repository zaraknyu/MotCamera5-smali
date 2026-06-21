.class public final Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;
.super Landroidx/preference/Preference;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/ui/widgets/OnlineHelpWebView$OnTouchCallback;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B1\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;",
        "Landroidx/preference/Preference;",
        "Lcom/motorola/camera/ui/widgets/OnlineHelpWebView$OnTouchCallback;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "defStyleRes",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;II)V",
        "MotCamera5-v10.0.47.24_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public errorImg:Landroid/widget/ImageButton;

.field public errorLayout:Landroid/widget/LinearLayout;

.field public errorTips:Landroid/widget/TextView;

.field public errorTitle:Landroid/widget/TextView;

.field public final handler:Landroid/os/Handler;

.field public itemView:Landroid/view/View;

.field public loadingLayout:Landroid/widget/LinearLayout;

.field public touchCount:I

.field public webView:Lcom/motorola/camera/ui/widgets/OnlineHelpWebView;

.field public webViewLayout:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xe

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .line 3
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 6
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    new-instance p4, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference$$ExternalSyntheticLambda1;

    const/4 v0, 0x0

    invoke-direct {p4, p0, p1, v0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference$$ExternalSyntheticLambda1;-><init>(Landroidx/preference/Preference;Landroid/content/Context;I)V

    invoke-direct {p2, p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->handler:Landroid/os/Handler;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    const p3, 0x7f04045b

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    const/4 p4, 0x0

    .line 4
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static allowThemeDarkening(Landroid/webkit/WebView;)V
    .locals 5

    const-string v0, "FORCE_DARK"

    invoke-static {v0}, Landroidx/webkit/WebViewFeature;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const-string v1, "This method is not supported by the current version of the framework and the current WebView APK"

    const-class v2, Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;

    const-string v3, "ALGORITHMIC_DARKENING"

    if-eqz v0, :cond_4

    const/16 v4, 0x10

    if-eq v0, v4, :cond_4

    const/16 v4, 0x20

    if-eq v0, v4, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-static {v3}, Landroidx/webkit/WebViewFeature;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p0

    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->ALGORITHMIC_DARKENING:Landroidx/webkit/internal/ApiFeature$M;

    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature$M;->isSupportedByWebView()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroidx/webkit/internal/WebViewGlueCommunicator$LAZY_COMPAT_CONVERTER_HOLDER;->INSTANCE:Lcom/google/android/gms/tasks/zza;

    iget-object v0, v0, Lcom/google/android/gms/tasks/zza;->zza:Ljava/lang/Object;

    check-cast v0, Lorg/chromium/support_lib_boundary/WebkitToCompatConverterBoundaryInterface;

    invoke-interface {v0, p0}, Lorg/chromium/support_lib_boundary/WebkitToCompatConverterBoundaryInterface;->convertSettings(Landroid/webkit/WebSettings;)Ljava/lang/reflect/InvocationHandler;

    move-result-object p0

    invoke-static {v2, p0}, Lorg/chromium/support_lib_boundary/util/BoundaryInterfaceReflectionUtil;->castToSuppLibClass(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;->setAlgorithmicDarkeningAllowed(Z)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p0

    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->FORCE_DARK:Landroidx/webkit/internal/ApiFeature$M;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/webkit/WebSettings;->setForceDark(I)V

    return-void

    :cond_4
    invoke-static {v3}, Landroidx/webkit/WebViewFeature;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p0

    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->ALGORITHMIC_DARKENING:Landroidx/webkit/internal/ApiFeature$M;

    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature$M;->isSupportedByWebView()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Landroidx/webkit/internal/WebViewGlueCommunicator$LAZY_COMPAT_CONVERTER_HOLDER;->INSTANCE:Lcom/google/android/gms/tasks/zza;

    iget-object v0, v0, Lcom/google/android/gms/tasks/zza;->zza:Ljava/lang/Object;

    check-cast v0, Lorg/chromium/support_lib_boundary/WebkitToCompatConverterBoundaryInterface;

    invoke-interface {v0, p0}, Lorg/chromium/support_lib_boundary/WebkitToCompatConverterBoundaryInterface;->convertSettings(Landroid/webkit/WebSettings;)Ljava/lang/reflect/InvocationHandler;

    move-result-object p0

    invoke-static {v2, p0}, Lorg/chromium/support_lib_boundary/util/BoundaryInterfaceReflectionUtil;->castToSuppLibClass(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;

    invoke-interface {p0, v3}, Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;->setAlgorithmicDarkeningAllowed(Z)V

    return-void

    :cond_5
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p0

    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->FORCE_DARK:Landroidx/webkit/internal/ApiFeature$M;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v3}, Landroid/webkit/WebSettings;->setForceDark(I)V

    return-void
.end method


# virtual methods
.method public final onAttached()V
    .locals 0

    invoke-super {p0}, Landroidx/preference/Preference;->onAttached()V

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p0}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/motorola/camera/analytics/AnalyticsHelper;->handleOnlineHelpOpened()V

    return-void
.end method

.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->itemView:Landroid/view/View;

    const v0, 0x7f0a0323

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.widget.RelativeLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->webViewLayout:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0326

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/OnlineHelpWebView;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->webView:Lcom/motorola/camera/ui/widgets/OnlineHelpWebView;

    const v0, 0x7f0a0322

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->loadingLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0a031c

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.widget.LinearLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->errorLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0a031e

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->errorImg:Landroid/widget/ImageButton;

    const v0, 0x7f0a0320

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->errorTitle:Landroid/widget/TextView;

    const v0, 0x7f0a031f

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.widget.TextView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->errorTips:Landroid/widget/TextView;

    const v0, 0x7f0a0324

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    if-eqz p1, :cond_0

    new-instance v0, Landroidx/media3/ui/PlayerControlView$$ExternalSyntheticLambda1;

    const/16 v1, 0x1c

    invoke-direct {v0, v1, p0}, Landroidx/media3/ui/PlayerControlView$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public final onDetached()V
    .locals 1

    invoke-virtual {p0}, Landroidx/preference/Preference;->unregisterDependency()V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->itemView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/motorola/camera/Util;->dismissKeyboard(Landroid/view/View;)Z

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->webView:Lcom/motorola/camera/ui/widgets/OnlineHelpWebView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->handler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public final onTouchEvent()V
    .locals 2

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->touchCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->touchCount:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->touchCount:I

    :cond_0
    return-void
.end method

.method public final updateState(Lcom/motorola/camera/ui/controls_2020/OnlineHelpWebViewClient$States;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_f

    const/4 v2, 0x1

    if-eq p1, v2, :cond_c

    const/4 v2, 0x2

    if-eq p1, v2, :cond_6

    const/4 v2, 0x3

    if-ne p1, v2, :cond_5

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->loadingLayout:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->webViewLayout:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->errorLayout:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->errorImg:Landroid/widget/ImageButton;

    if-eqz p1, :cond_3

    const v0, 0x7f08024a

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_3
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->errorTitle:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    const v0, 0x7f12034e

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_4
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->errorTips:Landroid/widget/TextView;

    if-eqz p1, :cond_12

    const v0, 0x7f12034f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_5
    new-instance p0, Lcom/google/gson/JsonParseException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_6
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->loadingLayout:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_7

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->webViewLayout:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->errorLayout:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_9

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->errorImg:Landroid/widget/ImageButton;

    if-eqz p1, :cond_a

    const v0, 0x7f080249

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_a
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->errorTitle:Landroid/widget/TextView;

    if-eqz p1, :cond_b

    const v0, 0x7f12034b

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_b
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->errorTips:Landroid/widget/TextView;

    if-eqz p1, :cond_12

    const v0, 0x7f12034c

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_c
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->loadingLayout:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_d

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->errorLayout:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_e

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_e
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->webViewLayout:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_12

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_f
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->webViewLayout:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_10

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_10
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->errorLayout:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_11

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_11
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->loadingLayout:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_12

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_12
    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->webView:Lcom/motorola/camera/ui/widgets/OnlineHelpWebView;

    if-eqz p0, :cond_13

    invoke-static {p0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->allowThemeDarkening(Landroid/webkit/WebView;)V

    :cond_13
    return-void
.end method
