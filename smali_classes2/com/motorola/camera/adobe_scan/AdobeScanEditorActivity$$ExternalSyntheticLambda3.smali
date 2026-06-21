.class public final synthetic Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;II)V
    .locals 0

    iput p3, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda3;->f$0:Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda3;->$r8$classId:I

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v2, 0x1

    iget-object p0, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda3;->f$0:Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p2, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->$r8$clinit:I

    packed-switch v0, :pswitch_data_0

    invoke-static {v2}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result p2

    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->PreviewArea(ILandroidx/compose/runtime/ComposerImpl;)V

    return-object v1

    :pswitch_0
    invoke-static {v2}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result p2

    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->Dialogs(ILandroidx/compose/runtime/ComposerImpl;)V

    return-object v1

    :pswitch_1
    invoke-static {v2}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result p2

    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->ImagePager(ILandroidx/compose/runtime/ComposerImpl;)V

    return-object v1

    :pswitch_2
    invoke-static {v2}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result p2

    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->DownloadAdobeDialog(ILandroidx/compose/runtime/ComposerImpl;)V

    return-object v1

    :pswitch_3
    invoke-static {v2}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result p2

    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->CropEditDialog(ILandroidx/compose/runtime/ComposerImpl;)V

    return-object v1

    :pswitch_4
    invoke-static {v2}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result p2

    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->ScanSessionContentPreview(ILandroidx/compose/runtime/ComposerImpl;)V

    return-object v1

    :pswitch_5
    invoke-static {v2}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result p2

    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->ScanAppResultImagesPreview(ILandroidx/compose/runtime/ComposerImpl;)V

    return-object v1

    :pswitch_6
    invoke-static {v2}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result p2

    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->SaveLocationDialog(ILandroidx/compose/runtime/ComposerImpl;)V

    return-object v1

    :pswitch_7
    invoke-static {v2}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result p2

    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->DiscardScanDialog(ILandroidx/compose/runtime/ComposerImpl;)V

    return-object v1

    :pswitch_8
    invoke-static {v2}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result p2

    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->RedirectHintToast(ILandroidx/compose/runtime/ComposerImpl;)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
