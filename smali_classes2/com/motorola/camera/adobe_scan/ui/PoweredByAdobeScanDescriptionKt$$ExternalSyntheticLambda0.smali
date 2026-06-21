.class public final synthetic Lcom/motorola/camera/adobe_scan/ui/PoweredByAdobeScanDescriptionKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/adobe_scan/ui/PoweredByAdobeScanDescriptionKt$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p3, p0, Lcom/motorola/camera/adobe_scan/ui/PoweredByAdobeScanDescriptionKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p4, p0, Lcom/motorola/camera/adobe_scan/ui/PoweredByAdobeScanDescriptionKt$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/motorola/camera/adobe_scan/ui/PoweredByAdobeScanDescriptionKt$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/motorola/camera/adobe_scan/ui/PoweredByAdobeScanDescriptionKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object p0, p0, Lcom/motorola/camera/adobe_scan/ui/PoweredByAdobeScanDescriptionKt$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result p2

    invoke-static {v0, p0, p1, p2}, La/l;->SaveLocationDialogText(Ljava/lang/String;Ljava/util/Map;Landroidx/compose/runtime/ComposerImpl;I)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/adobe_scan/ui/PoweredByAdobeScanDescriptionKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    iget-object p0, p0, Lcom/motorola/camera/adobe_scan/ui/PoweredByAdobeScanDescriptionKt$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p2, 0x31

    invoke-static {p2}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result p2

    invoke-static {v0, p0, p1, p2}, La/l;->SaveLocationDialog(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/motorola/camera/adobe_scan/ui/PoweredByAdobeScanDescriptionKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    iget-object p0, p0, Lcom/motorola/camera/adobe_scan/ui/PoweredByAdobeScanDescriptionKt$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function0;

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result p2

    invoke-static {v0, p0, p1, p2}, La/l;->DiscardScanDialog(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/ComposerImpl;I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/motorola/camera/adobe_scan/ui/PoweredByAdobeScanDescriptionKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/Modifier;

    iget-object p0, p0, Lcom/motorola/camera/adobe_scan/ui/PoweredByAdobeScanDescriptionKt$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/graphics/painter/Painter;

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result p2

    invoke-static {v0, p0, p1, p2}, La/l;->PoweredByAdobeScan(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/runtime/ComposerImpl;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
