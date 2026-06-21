.class public final Lcom/motorola/camera/ui/controls_2020/settings/fragment/HelpPreferencesFragment;
.super Lcom/motorola/camera/ui/controls_2020/settings/fragment/BaseNestedPreferencesFragment;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/CtaPermissionHelper$Listener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/motorola/camera/ui/controls_2020/settings/fragment/HelpPreferencesFragment;",
        "Lcom/motorola/camera/ui/controls_2020/settings/fragment/BaseNestedPreferencesFragment;",
        "Lcom/motorola/camera/CtaPermissionHelper$Listener;",
        "<init>",
        "()V",
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
.field public helpPreference:Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;


# direct methods
.method public constructor <init>()V
    .locals 2

    const v0, 0x7f150008

    const v1, 0x7f1202a4

    invoke-direct {p0, v0, v1}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/BaseNestedPreferencesFragment;-><init>(II)V

    return-void
.end method


# virtual methods
.method public final onBackInvoked()V
    .locals 1

    const v0, 0x7f120480

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->handler:Landroid/os/Handler;

    if-eqz p0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/BaseNestedPreferencesFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f120480

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;

    if-eqz p1, :cond_3

    iget-object v0, p1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->handler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/HelpPreferencesFragment;->helpPreference:Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;

    sget-boolean v1, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->CTA_ADVANCE_PERMISSIONS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v3, v1, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    invoke-virtual {v3, v1}, Lcom/motorola/camera/settings/PersistBehavior;->performRead(Lcom/motorola/camera/settings/Setting;)V

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    iget-object v1, v1, Lcom/motorola/camera/settings/PersistBehavior;->mPersistedValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p1, p1, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    const-string v0, "getContext(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isArcLongExposureStarTrailsSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p0}, Lcom/motorola/camera/CtaPermissionHelper;->getStartTrailCtaAdvanceDialog(Landroid/content/Context;Lcom/motorola/camera/CtaPermissionHelper$Listener;)Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p1, p0}, Lcom/motorola/camera/CtaPermissionHelper;->getCtaAdvanceDialog(Landroid/content/Context;Lcom/motorola/camera/CtaPermissionHelper$Listener;)Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lcom/motorola/camera/utility/ColorUtil;->applyWindowInsetsAsPadding(Landroidx/appcompat/app/AppCompatDialog;)V

    return-void

    :cond_1
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_2
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/BasePreferencesFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/BasePreferencesFragment;->disableScrollInPreference()V

    return-object p1
.end method

.method public final onCtaDialogClick()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    const-class v2, Lcom/motorola/camera/CtaPrivacyActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "null cannot be cast to non-null type com.motorola.camera.ui.controls_2020.settings.activity.SettingsActivity"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final onCtaDialogNegativeButtonClick(I)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/HelpPreferencesFragment;->helpPreference:Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->handler:Landroid/os/Handler;

    if-eqz p0, :cond_0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public final onCtaDialogPositiveButtonClick(I)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/HelpPreferencesFragment;->helpPreference:Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->handler:Landroid/os/Handler;

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public final startActivity(Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type com.motorola.camera.ui.controls_2020.settings.activity.SettingsActivity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->intent:Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
