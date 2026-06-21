.class public final synthetic Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;

.field public final synthetic f$1:Landroidx/compose/ui/Modifier;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;Landroidx/compose/ui/Modifier;II)V
    .locals 0

    iput p4, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda4;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda4;->f$0:Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;

    iput-object p2, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda4;->f$1:Landroidx/compose/ui/Modifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda4;->$r8$classId:I

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda4;->f$1:Landroidx/compose/ui/Modifier;

    iget-object p0, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda4;->f$0:Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p2, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->$r8$clinit:I

    packed-switch v0, :pswitch_data_0

    invoke-static {v2}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result p2

    invoke-virtual {p0, v3, p1, p2}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->TopBar(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/ComposerImpl;I)V

    return-object v1

    :pswitch_0
    invoke-static {v2}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result p2

    invoke-virtual {p0, v3, p1, p2}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->ToolbarCrop(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/ComposerImpl;I)V

    return-object v1

    :pswitch_1
    invoke-static {v2}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result p2

    invoke-virtual {p0, v3, p1, p2}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->Toolbar(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/ComposerImpl;I)V

    return-object v1

    :pswitch_2
    invoke-static {v2}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result p2

    invoke-virtual {p0, v3, p1, p2}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->BottomBar(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/ComposerImpl;I)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
