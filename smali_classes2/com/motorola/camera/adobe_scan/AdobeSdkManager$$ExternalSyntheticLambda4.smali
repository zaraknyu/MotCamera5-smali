.class public final synthetic Lcom/motorola/camera/adobe_scan/AdobeSdkManager$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/adobe_scan/AdobeSdkManager$$ExternalSyntheticLambda4;->$r8$classId:I

    iput-object p2, p0, Lcom/motorola/camera/adobe_scan/AdobeSdkManager$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/motorola/camera/adobe_scan/AdobeSdkManager$$ExternalSyntheticLambda4;->$r8$classId:I

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iget-object p0, p0, Lcom/motorola/camera/adobe_scan/AdobeSdkManager$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/motorola/camera/adobe_scan/AdobeScanComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/compose/component/ComposeComponent;->uiRotation$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    move-result p0

    const/high16 v0, 0x43340000    # 180.0f

    cmpg-float p0, p0, v0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lkotlin/jvm/functions/Function0;

    sget v0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->$r8$clinit:I

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-object v1

    :pswitch_1
    check-cast p0, Lkotlin/jvm/functions/Function0;

    check-cast p0, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel$$ExternalSyntheticLambda3;

    invoke-virtual {p0}, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel$$ExternalSyntheticLambda3;->invoke()Ljava/lang/Object;

    const/4 p0, 0x1

    invoke-static {p0}, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->clearScanSession(Z)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
