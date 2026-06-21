.class public final Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$SaveLocationDialog$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $adobeScanText:Ljava/lang/String;

.field public final synthetic $filesClickableParts:Ljava/util/HashMap;

.field public final synthetic $filesText:Ljava/lang/String;

.field public final synthetic $galleryClickableParts:Ljava/util/Map;

.field public final synthetic $galleryText:Ljava/lang/String;

.field public final synthetic this$0:Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$SaveLocationDialog$6;->$galleryText:Ljava/lang/String;

    iput-object p2, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$SaveLocationDialog$6;->$galleryClickableParts:Ljava/util/Map;

    iput-object p3, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$SaveLocationDialog$6;->this$0:Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;

    iput-object p4, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$SaveLocationDialog$6;->$filesText:Ljava/lang/String;

    iput-object p5, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$SaveLocationDialog$6;->$adobeScanText:Ljava/lang/String;

    iput-object p6, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$SaveLocationDialog$6;->$filesClickableParts:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    and-int/lit8 p2, p2, 0x3

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_2

    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$SaveLocationDialog$6;->$galleryText:Ljava/lang/String;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const v0, 0x7f120218

    invoke-static {v0, p2, p1}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(I[Ljava/lang/Object;Landroidx/compose/runtime/ComposerImpl;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$SaveLocationDialog$6;->$galleryClickableParts:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {p2, v0, p1, v1}, La/l;->SaveLocationDialogText(Ljava/lang/String;Ljava/util/Map;Landroidx/compose/runtime/ComposerImpl;I)V

    iget-object p2, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$SaveLocationDialog$6;->this$0:Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;

    iget-object p2, p2, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->uiState:Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;

    invoke-virtual {p2}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;->isScanResultFromAdobeApp()Z

    move-result p2

    iget-object v0, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$SaveLocationDialog$6;->$filesText:Ljava/lang/String;

    if-eqz p2, :cond_2

    const p2, 0x6e600031

    invoke-virtual {p1, p2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-object p2, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$SaveLocationDialog$6;->$adobeScanText:Ljava/lang/String;

    filled-new-array {v0, p2}, [Ljava/lang/Object;

    move-result-object p2

    const v0, 0x7f120359

    invoke-static {v0, p2, p1}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(I[Ljava/lang/Object;Landroidx/compose/runtime/ComposerImpl;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_1

    :cond_2
    const p2, 0x6e634268

    invoke-virtual {p1, p2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const p2, 0x7f1201ef

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v0, p1}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(I[Ljava/lang/Object;Landroidx/compose/runtime/ComposerImpl;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_1
    iget-object p0, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$SaveLocationDialog$6;->$filesClickableParts:Ljava/util/HashMap;

    invoke-static {p2, p0, p1, v1}, La/l;->SaveLocationDialogText(Ljava/lang/String;Ljava/util/Map;Landroidx/compose/runtime/ComposerImpl;I)V

    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
