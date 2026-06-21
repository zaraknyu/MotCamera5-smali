.class public final Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$2;
.super Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;ZI)V
    .locals 0

    iput p4, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$2;->$r8$classId:I

    invoke-direct {p0, p1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Z)V

    return-void
.end method


# virtual methods
.method public final getButtonEvent()Lcom/motorola/camera/fsm/camera/Trigger;
    .locals 1

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$2;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->REVIEW_PLAY:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p0, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    return-object p0

    :pswitch_0
    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->REVIEW_CANCEL:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p0, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    return-object p0

    :pswitch_1
    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->REVIEW_ACCEPT:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p0, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
