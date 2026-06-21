.class public final Landroidx/compose/ui/text/MultiParagraphIntrinsics$maxIntrinsicWidth$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/motorola/camera/AppFeatures;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/AppFeatures;I)V
    .locals 0

    iput p2, p0, Landroidx/compose/ui/text/MultiParagraphIntrinsics$maxIntrinsicWidth$2;->$r8$classId:I

    iput-object p1, p0, Landroidx/compose/ui/text/MultiParagraphIntrinsics$maxIntrinsicWidth$2;->this$0:Lcom/motorola/camera/AppFeatures;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 7

    iget v0, p0, Landroidx/compose/ui/text/MultiParagraphIntrinsics$maxIntrinsicWidth$2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/compose/ui/text/MultiParagraphIntrinsics$maxIntrinsicWidth$2;->this$0:Lcom/motorola/camera/AppFeatures;

    iget-object p0, p0, Lcom/motorola/camera/AppFeatures;->mValueFeatureMap:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/compose/ui/text/ParagraphIntrinsicInfo;

    iget-object v1, v1, Landroidx/compose/ui/text/ParagraphIntrinsicInfo;->intrinsics:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    invoke-virtual {v1}, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->getMinIntrinsicWidth()F

    move-result v1

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v2

    const/4 v3, 0x1

    if-gt v3, v2, :cond_2

    :goto_0
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Landroidx/compose/ui/text/ParagraphIntrinsicInfo;

    iget-object v5, v5, Landroidx/compose/ui/text/ParagraphIntrinsicInfo;->intrinsics:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    invoke-virtual {v5}, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->getMinIntrinsicWidth()F

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-gez v6, :cond_1

    move-object v0, v4

    move v1, v5

    :cond_1
    if-eq v3, v2, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move-object p0, v0

    :goto_1
    check-cast p0, Landroidx/compose/ui/text/ParagraphIntrinsicInfo;

    if-eqz p0, :cond_3

    iget-object p0, p0, Landroidx/compose/ui/text/ParagraphIntrinsicInfo;->intrinsics:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    invoke-virtual {p0}, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->getMinIntrinsicWidth()F

    move-result p0

    goto :goto_2

    :cond_3
    const/4 p0, 0x0

    :goto_2
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Landroidx/compose/ui/text/MultiParagraphIntrinsics$maxIntrinsicWidth$2;->this$0:Lcom/motorola/camera/AppFeatures;

    iget-object p0, p0, Lcom/motorola/camera/AppFeatures;->mValueFeatureMap:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p0, 0x0

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/compose/ui/text/ParagraphIntrinsicInfo;

    iget-object v1, v1, Landroidx/compose/ui/text/ParagraphIntrinsicInfo;->intrinsics:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    iget-object v1, v1, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->layoutIntrinsics:Landroidx/compose/ui/text/android/LayoutIntrinsics;

    invoke-virtual {v1}, Landroidx/compose/ui/text/android/LayoutIntrinsics;->getMaxIntrinsicWidth()F

    move-result v1

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v2

    const/4 v3, 0x1

    if-gt v3, v2, :cond_6

    :goto_3
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Landroidx/compose/ui/text/ParagraphIntrinsicInfo;

    iget-object v5, v5, Landroidx/compose/ui/text/ParagraphIntrinsicInfo;->intrinsics:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    iget-object v5, v5, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->layoutIntrinsics:Landroidx/compose/ui/text/android/LayoutIntrinsics;

    invoke-virtual {v5}, Landroidx/compose/ui/text/android/LayoutIntrinsics;->getMaxIntrinsicWidth()F

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-gez v6, :cond_5

    move-object v0, v4

    move v1, v5

    :cond_5
    if-eq v3, v2, :cond_6

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    move-object p0, v0

    :goto_4
    check-cast p0, Landroidx/compose/ui/text/ParagraphIntrinsicInfo;

    if-eqz p0, :cond_7

    iget-object p0, p0, Landroidx/compose/ui/text/ParagraphIntrinsicInfo;->intrinsics:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    iget-object p0, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->layoutIntrinsics:Landroidx/compose/ui/text/android/LayoutIntrinsics;

    invoke-virtual {p0}, Landroidx/compose/ui/text/android/LayoutIntrinsics;->getMaxIntrinsicWidth()F

    move-result p0

    goto :goto_5

    :cond_7
    const/4 p0, 0x0

    :goto_5
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
