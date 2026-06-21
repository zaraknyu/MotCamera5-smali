.class public final synthetic Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda56;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$3:Z

.field public final synthetic f$4:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;ZLkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function0;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda56;->f$0:Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;

    iput-boolean p2, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda56;->f$1:Z

    iput-object p3, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda56;->f$2:Lkotlin/jvm/functions/Function0;

    iput-boolean p4, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda56;->f$3:Z

    iput-object p5, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda56;->f$4:Lkotlin/jvm/functions/Function0;

    iput p6, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda56;->f$5:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    move-object v5, p1

    check-cast v5, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    sget p1, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->$r8$clinit:I

    iget p1, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda56;->f$5:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result v6

    iget-object v0, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda56;->f$0:Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;

    iget-boolean v1, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda56;->f$1:Z

    iget-object v2, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda56;->f$2:Lkotlin/jvm/functions/Function0;

    iget-boolean v3, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda56;->f$3:Z

    iget-object v4, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda56;->f$4:Lkotlin/jvm/functions/Function0;

    invoke-virtual/range {v0 .. v6}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->ScrollArrows(ZLkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/ComposerImpl;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
