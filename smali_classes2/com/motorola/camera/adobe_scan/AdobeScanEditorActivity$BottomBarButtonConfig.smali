.class public final Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$BottomBarButtonConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final buttonText:Ljava/lang/String;

.field public final enabled:Landroidx/compose/runtime/MutableState;

.field public final onClick:Lkotlin/jvm/functions/Function0;

.field public final painter:Landroidx/compose/ui/graphics/painter/Painter;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/runtime/ParcelableSnapshotMutableState;Lkotlin/jvm/functions/Function0;)V
    .locals 1

    const-string v0, "buttonText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "painter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "enabled"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onClick"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$BottomBarButtonConfig;->buttonText:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$BottomBarButtonConfig;->painter:Landroidx/compose/ui/graphics/painter/Painter;

    .line 4
    iput-object p3, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$BottomBarButtonConfig;->enabled:Landroidx/compose/runtime/MutableState;

    .line 5
    iput-object p4, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$BottomBarButtonConfig;->onClick:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Landroidx/compose/ui/graphics/painter/Painter;Lkotlin/jvm/functions/Function0;)V
    .locals 1

    .line 6
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v0

    .line 7
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$BottomBarButtonConfig;-><init>(Ljava/lang/String;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/runtime/ParcelableSnapshotMutableState;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$BottomBarButtonConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$BottomBarButtonConfig;

    iget-object v1, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$BottomBarButtonConfig;->buttonText:Ljava/lang/String;

    iget-object v3, p1, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$BottomBarButtonConfig;->buttonText:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$BottomBarButtonConfig;->painter:Landroidx/compose/ui/graphics/painter/Painter;

    iget-object v3, p1, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$BottomBarButtonConfig;->painter:Landroidx/compose/ui/graphics/painter/Painter;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$BottomBarButtonConfig;->enabled:Landroidx/compose/runtime/MutableState;

    iget-object v3, p1, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$BottomBarButtonConfig;->enabled:Landroidx/compose/runtime/MutableState;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$BottomBarButtonConfig;->onClick:Lkotlin/jvm/functions/Function0;

    iget-object p1, p1, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$BottomBarButtonConfig;->onClick:Lkotlin/jvm/functions/Function0;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$BottomBarButtonConfig;->buttonText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$BottomBarButtonConfig;->painter:Landroidx/compose/ui/graphics/painter/Painter;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$BottomBarButtonConfig;->enabled:Landroidx/compose/runtime/MutableState;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$BottomBarButtonConfig;->onClick:Lkotlin/jvm/functions/Function0;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BottomBarButtonConfig(buttonText="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$BottomBarButtonConfig;->buttonText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", painter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$BottomBarButtonConfig;->painter:Landroidx/compose/ui/graphics/painter/Painter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$BottomBarButtonConfig;->enabled:Landroidx/compose/runtime/MutableState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", onClick="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$BottomBarButtonConfig;->onClick:Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
