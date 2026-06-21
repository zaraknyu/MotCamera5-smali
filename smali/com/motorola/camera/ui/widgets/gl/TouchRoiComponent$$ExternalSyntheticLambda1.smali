.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->resetSensorValues()V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->dispatchReset()V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isShutterButtonMode()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->applyCenterRoiAnimation(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
