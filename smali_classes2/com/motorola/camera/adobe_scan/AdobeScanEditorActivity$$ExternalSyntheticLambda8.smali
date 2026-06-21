.class public final synthetic Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;II)V
    .locals 0

    iput p3, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda8;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda8;->f$0:Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;

    iput p2, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda8;->f$1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda8;->$r8$classId:I

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iget v2, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda8;->f$1:I

    iget-object p0, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda8;->f$0:Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    sget p2, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->$r8$clinit:I

    packed-switch v0, :pswitch_data_0

    or-int/lit8 p2, v2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result p2

    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->CropBottomBar(ILandroidx/compose/runtime/ComposerImpl;)V

    return-object v1

    :pswitch_0
    or-int/lit8 p2, v2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result p2

    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->BackButton(ILandroidx/compose/runtime/ComposerImpl;)V

    return-object v1

    :pswitch_1
    or-int/lit8 p2, v2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result p2

    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->InitializePagerState(ILandroidx/compose/runtime/ComposerImpl;)V

    return-object v1

    :pswitch_2
    or-int/lit8 p2, v2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result p2

    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->DoMoreWithAdobe(ILandroidx/compose/runtime/ComposerImpl;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
