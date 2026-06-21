.class public final synthetic Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/preference/Preference;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroidx/preference/Preference;Landroid/content/Context;I)V
    .locals 0

    iput p3, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference$$ExternalSyntheticLambda1;->f$0:Landroidx/preference/Preference;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference$$ExternalSyntheticLambda1;->f$1:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 4

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference$$ExternalSyntheticLambda1;->f$0:Landroidx/preference/Preference;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/LocationSwitchComponent;

    const-string v1, "message"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference$$ExternalSyntheticLambda1;->f$1:Landroid/content/Context;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;

    const/4 v2, 0x3

    invoke-direct {p1, v2, p0, v0}, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return v1

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference$$ExternalSyntheticLambda1;->f$0:Landroidx/preference/Preference;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;

    const-string v1, "message"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_6

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->itemView:Landroid/view/View;

    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/motorola/camera/Util;->dismissKeyboard(Landroid/view/View;)Z

    move-result p1

    goto :goto_0

    :cond_2
    move p1, v1

    :goto_0
    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    iget-object p1, v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->webView:Lcom/motorola/camera/ui/widgets/OnlineHelpWebView;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result p1

    if-ne p1, v2, :cond_5

    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->webView:Lcom/motorola/camera/ui/widgets/OnlineHelpWebView;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/webkit/WebView;->goBack()V

    :cond_4
    :goto_1
    move v1, v2

    goto :goto_2

    :cond_5
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference$$ExternalSyntheticLambda1;->f$1:Landroid/content/Context;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher;->onBackPressed()V

    goto :goto_1

    :cond_6
    sget-object p0, Lcom/motorola/camera/ui/controls_2020/OnlineHelpWebViewClient$States;->LOADING:Lcom/motorola/camera/ui/controls_2020/OnlineHelpWebViewClient$States;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->updateState(Lcom/motorola/camera/ui/controls_2020/OnlineHelpWebViewClient$States;)V

    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->handler:Landroid/os/Handler;

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda2;

    const/16 v3, 0xb

    invoke-direct {p1, v3, v0}, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->itemView:Landroid/view/View;

    if-eqz p0, :cond_4

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :goto_2
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
