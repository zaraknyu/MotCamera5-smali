.class public final synthetic Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent$$ExternalSyntheticLambda3;->f$0:Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent$$ExternalSyntheticLambda3;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroid/content/Intent;

    new-instance v0, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;-><init>(Landroid/content/Intent;I)V

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent$$ExternalSyntheticLambda3;->f$0:Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p0, v0}, Lcom/motorola/camera/ActivityStarter;->startActivity(Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent$$ExternalSyntheticLambda3;->f$0:Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;

    check-cast p1, Lcom/motorola/camera/ui/controls_2020/OnlineHelpWebViewClient$States;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->updateState$1(Lcom/motorola/camera/ui/controls_2020/OnlineHelpWebViewClient$States;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
