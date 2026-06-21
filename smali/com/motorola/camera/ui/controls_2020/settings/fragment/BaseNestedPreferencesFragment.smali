.class public Lcom/motorola/camera/ui/controls_2020/settings/fragment/BaseNestedPreferencesFragment;
.super Lcom/motorola/camera/ui/controls_2020/settings/fragment/BasePreferencesFragment;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackImpl;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0017\u0018\u00002\u00020\u00012\u00020\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/motorola/camera/ui/controls_2020/settings/fragment/BaseNestedPreferencesFragment;",
        "Lcom/motorola/camera/ui/controls_2020/settings/fragment/BasePreferencesFragment;",
        "Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackImpl;",
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
.field public final titleRes:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/BasePreferencesFragment;-><init>(I)V

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/BaseNestedPreferencesFragment;->titleRes:I

    return-void
.end method


# virtual methods
.method public onBackInvoked()V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->onCreate(Landroid/os/Bundle;)V

    iget-object p0, p0, Landroidx/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/preference/PreferenceManager;->mOnNavigateToScreenListener:Ljava/lang/Object;

    return-void
.end method

.method public final onPause()V
    .locals 3

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    sget v0, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;->$r8$clinit:I

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper$OnBackInvokedCallbackHolder;->holder:Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type com.motorola.camera.ui.controls_2020.settings.activity.SettingsActivity"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;

    invoke-virtual {v0, v1, p0}, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;->unRegisterCallback(Landroid/app/Activity;Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackImpl;)V

    return-void
.end method

.method public final onResume()V
    .locals 3

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.motorola.camera.ui.controls_2020.settings.activity.SettingsActivity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;

    sget v1, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->$r8$clinit:I

    const v1, 0x7f0a00f7

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    iget v2, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/BaseNestedPreferencesFragment;->titleRes:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    const v1, 0x7f0a0076

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/appbar/AppBarLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(Z)V

    sget v1, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;->$r8$clinit:I

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper$OnBackInvokedCallbackHolder;->holder:Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;

    invoke-virtual {v1, v0, p0}, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;->registerCallback(Landroid/app/Activity;Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackImpl;)V

    return-void
.end method
