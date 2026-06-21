.class public final synthetic Lcom/motorola/camera/adobe_scan/AdobeScanComponent$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/adobe_scan/AdobeScanComponent;

.field public final synthetic f$1:Landroidx/compose/ui/Modifier;

.field public final synthetic f$2:Landroid/graphics/Bitmap;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/adobe_scan/AdobeScanComponent;Landroidx/compose/ui/Modifier;Landroid/graphics/Bitmap;II)V
    .locals 0

    iput p5, p0, Lcom/motorola/camera/adobe_scan/AdobeScanComponent$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/adobe_scan/AdobeScanComponent$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/adobe_scan/AdobeScanComponent;

    iput-object p2, p0, Lcom/motorola/camera/adobe_scan/AdobeScanComponent$$ExternalSyntheticLambda2;->f$1:Landroidx/compose/ui/Modifier;

    iput-object p3, p0, Lcom/motorola/camera/adobe_scan/AdobeScanComponent$$ExternalSyntheticLambda2;->f$2:Landroid/graphics/Bitmap;

    iput p4, p0, Lcom/motorola/camera/adobe_scan/AdobeScanComponent$$ExternalSyntheticLambda2;->f$3:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/motorola/camera/adobe_scan/AdobeScanComponent$$ExternalSyntheticLambda2;->$r8$classId:I

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    packed-switch v0, :pswitch_data_0

    iget p2, p0, Lcom/motorola/camera/adobe_scan/AdobeScanComponent$$ExternalSyntheticLambda2;->f$3:I

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result p2

    iget-object v0, p0, Lcom/motorola/camera/adobe_scan/AdobeScanComponent$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/adobe_scan/AdobeScanComponent;

    iget-object v1, p0, Lcom/motorola/camera/adobe_scan/AdobeScanComponent$$ExternalSyntheticLambda2;->f$1:Landroidx/compose/ui/Modifier;

    iget-object p0, p0, Lcom/motorola/camera/adobe_scan/AdobeScanComponent$$ExternalSyntheticLambda2;->f$2:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/motorola/camera/adobe_scan/AdobeScanComponent;->Thumbnail(Landroidx/compose/ui/Modifier;Landroid/graphics/Bitmap;Landroidx/compose/runtime/ComposerImpl;I)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iget p2, p0, Lcom/motorola/camera/adobe_scan/AdobeScanComponent$$ExternalSyntheticLambda2;->f$3:I

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result p2

    iget-object v0, p0, Lcom/motorola/camera/adobe_scan/AdobeScanComponent$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/adobe_scan/AdobeScanComponent;

    iget-object v1, p0, Lcom/motorola/camera/adobe_scan/AdobeScanComponent$$ExternalSyntheticLambda2;->f$1:Landroidx/compose/ui/Modifier;

    iget-object p0, p0, Lcom/motorola/camera/adobe_scan/AdobeScanComponent$$ExternalSyntheticLambda2;->f$2:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/motorola/camera/adobe_scan/AdobeScanComponent;->Thumbnail(Landroidx/compose/ui/Modifier;Landroid/graphics/Bitmap;Landroidx/compose/runtime/ComposerImpl;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
