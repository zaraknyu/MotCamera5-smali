.class public final Landroidx/constraintlayout/utils/widget/ImageFilterView$1;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Landroidx/constraintlayout/utils/widget/ImageFilterView;


# direct methods
.method public synthetic constructor <init>(Landroidx/constraintlayout/utils/widget/ImageFilterView;I)V
    .locals 0

    iput p2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$1;->$r8$classId:I

    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$1;->this$0:Landroidx/constraintlayout/utils/widget/ImageFilterView;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public final getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 12

    iget p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$1;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$1;->this$0:Landroidx/constraintlayout/utils/widget/ImageFilterView;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    const/4 v2, 0x0

    iget v5, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRound:F

    const/4 v1, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void

    :pswitch_0
    move-object v0, p2

    iget-object p0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$1;->this$0:Landroidx/constraintlayout/utils/widget/ImageFilterView;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    iget p0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRoundPercent:F

    mul-float/2addr p1, p0

    const/high16 p0, 0x40000000    # 2.0f

    div-float v11, p1, p0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, v0

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
