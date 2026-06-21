.class public final synthetic Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent$$ExternalSyntheticLambda3;->f$0:Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent$$ExternalSyntheticLambda3;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent$$ExternalSyntheticLambda3;->f$0:Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;

    iput-boolean v0, p0, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;->mAllowShow:Z

    iget-boolean v0, p0, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;->mTracking:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent$$ExternalSyntheticLambda0;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    const/4 v0, 0x0

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent$$ExternalSyntheticLambda3;->f$0:Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;

    iput-boolean v0, p0, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;->mAllowShow:Z

    new-instance v0, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent$$ExternalSyntheticLambda0;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
