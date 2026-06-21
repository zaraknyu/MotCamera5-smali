.class public final synthetic Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent$$ExternalSyntheticLambda11;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent$$ExternalSyntheticLambda11;->f$0:Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent$$ExternalSyntheticLambda11;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent$$ExternalSyntheticLambda11;->f$0:Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent;->toggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setViewExpandState(IZ)V

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent$$ExternalSyntheticLambda0;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent$$ExternalSyntheticLambda11;->f$0:Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent;->toggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setViewExpandState(IZ)V

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent$$ExternalSyntheticLambda0;

    const/16 v1, 0x8

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent$$ExternalSyntheticLambda11;->f$0:Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent;->toggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setViewExpandState(IZ)V

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent$$ExternalSyntheticLambda0;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :pswitch_2
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent$$ExternalSyntheticLambda11;->f$0:Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent;->toggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setViewExpandState(IZ)V

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent$$ExternalSyntheticLambda0;

    const/16 v1, 0x8

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent$$ExternalSyntheticLambda11;->f$0:Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent;

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
