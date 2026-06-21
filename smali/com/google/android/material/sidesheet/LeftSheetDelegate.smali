.class public final Lcom/google/android/material/sidesheet/LeftSheetDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final sheetBehavior:Lcom/google/android/material/sidesheet/SideSheetBehavior;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/sidesheet/SideSheetBehavior;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/material/sidesheet/LeftSheetDelegate;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/material/sidesheet/LeftSheetDelegate;->sheetBehavior:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getExpandedOffset()I
    .locals 2

    iget v0, p0, Lcom/google/android/material/sidesheet/LeftSheetDelegate;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/google/android/material/sidesheet/LeftSheetDelegate;->sheetBehavior:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    iget v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->parentWidth:I

    iget v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->childWidth:I

    sub-int/2addr v0, v1

    iget p0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->innerMargin:I

    sub-int/2addr v0, p0

    const/4 p0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/material/sidesheet/LeftSheetDelegate;->sheetBehavior:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    iget v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->parentInnerEdge:I

    iget p0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->innerMargin:I

    add-int/2addr v0, p0

    const/4 p0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getHiddenOffset()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/sidesheet/LeftSheetDelegate;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/google/android/material/sidesheet/LeftSheetDelegate;->sheetBehavior:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    iget p0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->parentWidth:I

    return p0

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/material/sidesheet/LeftSheetDelegate;->sheetBehavior:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    iget v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->childWidth:I

    neg-int v0, v0

    iget p0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->innerMargin:I

    sub-int/2addr v0, p0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getOuterEdge(Landroid/view/View;)I
    .locals 1

    iget v0, p0, Lcom/google/android/material/sidesheet/LeftSheetDelegate;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    iget-object p0, p0, Lcom/google/android/material/sidesheet/LeftSheetDelegate;->sheetBehavior:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    iget p0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->innerMargin:I

    sub-int/2addr p1, p0

    return p1

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p1

    iget-object p0, p0, Lcom/google/android/material/sidesheet/LeftSheetDelegate;->sheetBehavior:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    iget p0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->innerMargin:I

    add-int/2addr p1, p0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
