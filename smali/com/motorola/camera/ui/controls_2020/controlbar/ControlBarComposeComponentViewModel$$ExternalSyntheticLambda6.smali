.class public final synthetic Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel$$ExternalSyntheticLambda6;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel$$ExternalSyntheticLambda6;->f$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel$$ExternalSyntheticLambda6;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel$$ExternalSyntheticLambda6;->f$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel$$ExternalSyntheticLambda3;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel$$ExternalSyntheticLambda6;->f$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel$$ExternalSyntheticLambda3;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel$$ExternalSyntheticLambda6;->f$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;->DEFAULT:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel$ControlBarState;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;->updateControlBarState(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel$ControlBarState;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
