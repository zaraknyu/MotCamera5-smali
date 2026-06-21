.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/settings/SettingChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda3;->f$0:Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChange(Lcom/motorola/camera/settings/Setting;)V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda3;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda3;->f$0:Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->mAudioLensSwitchHandler:Landroidx/preference/PreferenceFragmentCompat$1;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void

    :pswitch_0
    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda3;->f$0:Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->setupAudioLensSwitch()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->startAudioLensSwitchAnimation(FZ)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->stopAudioLensSwitch()V

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->startAudioLensSwitchAnimation(FZ)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
