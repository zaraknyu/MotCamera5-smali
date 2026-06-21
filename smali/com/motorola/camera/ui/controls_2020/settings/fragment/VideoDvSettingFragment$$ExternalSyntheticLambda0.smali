.class public final synthetic Lcom/motorola/camera/ui/controls_2020/settings/fragment/VideoDvSettingFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/settings/fragment/VideoDvSettingFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/settings/fragment/VideoDvSettingFragment;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/VideoDvSettingFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/VideoDvSettingFragment$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/settings/fragment/VideoDvSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)V
    .locals 1

    iget p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/VideoDvSettingFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    const-string p1, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const p2, 0x7f1204c7

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/VideoDvSettingFragment$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/settings/fragment/VideoDvSettingFragment;

    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_0
    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/VideoDvSettingFragment$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/settings/fragment/VideoDvSettingFragment;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/VideoDvSettingFragment;->configStateBySetting()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
