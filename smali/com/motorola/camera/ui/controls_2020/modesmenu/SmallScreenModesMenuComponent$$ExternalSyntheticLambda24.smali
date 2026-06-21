.class public final synthetic Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent$$ExternalSyntheticLambda24;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent$$ExternalSyntheticLambda24;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent$$ExternalSyntheticLambda24;->f$0:Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget p1, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent$$ExternalSyntheticLambda24;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent$$ExternalSyntheticLambda24;->f$0:Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->HIDE_MODE_UI:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-interface {p0, p1}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void

    :pswitch_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "WAIT_MODE"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "WAIT_DIRECTION"

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->LEFT:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent$$ExternalSyntheticLambda24;->f$0:Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->LAUNCH_MODE_UI:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v2, p1, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-interface {p0, v0}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
