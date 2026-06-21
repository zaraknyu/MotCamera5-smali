.class public final synthetic Lcom/motorola/camera/adobe_scan/ui/StorageFullIndicatorKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(ILkotlin/jvm/functions/Function0;)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/adobe_scan/ui/StorageFullIndicatorKt$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p2, p0, Lcom/motorola/camera/adobe_scan/ui/StorageFullIndicatorKt$$ExternalSyntheticLambda1;->f$0:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/motorola/camera/adobe_scan/ui/StorageFullIndicatorKt$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/adobe_scan/ui/StorageFullIndicatorKt$$ExternalSyntheticLambda1;->f$0:Lkotlin/jvm/functions/Function0;

    packed-switch v0, :pswitch_data_0

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_0

    :pswitch_1
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_0

    :pswitch_2
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForMemoryRunnable;->handleStorageFull()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
