.class public final Lcom/motorola/camera/ui/controls_2020/settings/preferences/LocationSwitchComponent;
.super Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/HighlightSwitchPreference;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/CtaPermissionHelper$Listener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B1\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/motorola/camera/ui/controls_2020/settings/preferences/LocationSwitchComponent;",
        "Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/HighlightSwitchPreference;",
        "Lcom/motorola/camera/CtaPermissionHelper$Listener;",
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
.field public final handler:Landroid/os/Handler;

.field public final locationChangeListener:Lcom/motorola/camera/ui/controls_2020/settings/preferences/LocationSwitchComponent$$ExternalSyntheticLambda2;

.field public shouldAnimate:Z


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

    invoke-direct/range {v1 .. v7}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/LocationSwitchComponent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v1 .. v7}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/LocationSwitchComponent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v1 .. v7}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/LocationSwitchComponent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/HighlightSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 6
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    new-instance p4, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference$$ExternalSyntheticLambda1;

    const/4 v0, 0x1

    invoke-direct {p4, p0, p1, v0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference$$ExternalSyntheticLambda1;-><init>(Landroidx/preference/Preference;Landroid/content/Context;I)V

    invoke-direct {p2, p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/LocationSwitchComponent;->handler:Landroid/os/Handler;

    .line 7
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/LocationSwitchComponent$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/LocationSwitchComponent;->locationChangeListener:Lcom/motorola/camera/ui/controls_2020/settings/preferences/LocationSwitchComponent$$ExternalSyntheticLambda2;

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

    const p3, 0x7f040531

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    const/4 p4, 0x0

    .line 4
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/LocationSwitchComponent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public final onAttached()V
    .locals 1

    invoke-super {p0}, Landroidx/preference/Preference;->onAttached()V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION_STATUS:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/LocationSwitchComponent;->locationChangeListener:Lcom/motorola/camera/ui/controls_2020/settings/preferences/LocationSwitchComponent$$ExternalSyntheticLambda2;

    invoke-static {v0, p0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    return-void
.end method

.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/HighlightSwitchPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/LocationSwitchComponent;->shouldAnimate:Z

    if-eqz v0, :cond_0

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda2;

    const/16 v1, 0xa

    invoke-direct {v0, v1, p0}, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final onClick()V
    .locals 8

    iget-boolean v0, p0, Landroidx/preference/TwoStatePreference;->mChecked:Z

    xor-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_1

    :cond_0
    sget-boolean v0, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result v0

    const/4 v3, 0x3

    const-string v4, "getContext(...)"

    iget-object v5, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->CTA_ALL_PERMISSIONS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v6, v0, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    invoke-virtual {v6, v0}, Lcom/motorola/camera/settings/PersistBehavior;->performRead(Lcom/motorola/camera/settings/Setting;)V

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    iget-object v0, v0, Lcom/motorola/camera/settings/PersistBehavior;->mPersistedValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->CTA_ADVANCE_PERMISSIONS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v6

    iget-object v7, v6, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    invoke-virtual {v7, v6}, Lcom/motorola/camera/settings/PersistBehavior;->performRead(Lcom/motorola/camera/settings/Setting;)V

    iget-object v6, v6, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    iget-object v6, v6, Lcom/motorola/camera/settings/PersistBehavior;->mPersistedValue:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "null cannot be cast to non-null type com.motorola.camera.ui.controls_2020.settings.activity.SettingsActivity"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v5

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;

    invoke-static {}, Lcom/motorola/camera/PermissionsManager;->getInstance()Lcom/motorola/camera/PermissionsManager;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/PermissionsManager;->LOCATION_PERMISSIONS:[Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v0}, Lcom/motorola/camera/PermissionsManager;->isAnyPermissionGranted([Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    :cond_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isArcLongExposureStarTrailsSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v5, p0}, Lcom/motorola/camera/CtaPermissionHelper;->getStartTrailCtaAdvanceDialog(Landroid/content/Context;Lcom/motorola/camera/CtaPermissionHelper$Listener;)Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-static {v5, p0}, Lcom/motorola/camera/CtaPermissionHelper;->getCtaAdvanceDialog(Landroid/content/Context;Lcom/motorola/camera/CtaPermissionHelper$Listener;)Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lcom/motorola/camera/utility/ColorUtil;->applyWindowInsetsAsPadding(Landroidx/appcompat/app/AppCompatDialog;)V

    goto :goto_1

    :cond_3
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;

    invoke-direct {v0, v3, v5, p0}, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v5, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_4
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;

    invoke-direct {v0, v3, v5, p0}, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v5, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_1
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION_ALLOW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public final onCtaDialogClick()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/motorola/camera/CtaPrivacyActivity;

    iget-object p0, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "null cannot be cast to non-null type com.motorola.camera.ui.controls_2020.settings.activity.SettingsActivity"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final onCtaDialogNegativeButtonClick(I)V
    .locals 0

    return-void
.end method

.method public final onCtaDialogPositiveButtonClick(I)V
    .locals 1

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION_ALLOW:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/LocationSwitchComponent;->handler:Landroid/os/Handler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final onDetached()V
    .locals 1

    invoke-virtual {p0}, Landroidx/preference/Preference;->unregisterDependency()V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION_STATUS:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/LocationSwitchComponent;->locationChangeListener:Lcom/motorola/camera/ui/controls_2020/settings/preferences/LocationSwitchComponent$$ExternalSyntheticLambda2;

    invoke-static {v0, p0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    return-void
.end method

.method public final startActivity(Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;)V
    .locals 1

    const-string v0, "null cannot be cast to non-null type com.motorola.camera.ui.controls_2020.settings.activity.SettingsActivity"

    iget-object p0, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

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
