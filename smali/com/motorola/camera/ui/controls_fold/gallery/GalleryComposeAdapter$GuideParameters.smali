.class public final Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final actionLayoutGuideLineY:I

.field public final bottomGuideLineY:I

.field public final bottomToBottomId:I

.field public final isBoundInLandscape:Z

.field public final isInit:Z

.field public final orientation:F

.field public final previewSize:Lcom/motorola/camera/PreviewSize;

.field public final timestamp:J

.field public final timestampDiff:J

.field public final topGuideLineY:I

.field public final topToTopId:I

.field public final viewSize:Landroid/util/Size;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/PreviewSize;Landroid/util/Size;JZZIIIIIFJ)V
    .locals 1

    const-string/jumbo v0, "viewSize"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;->previewSize:Lcom/motorola/camera/PreviewSize;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;->viewSize:Landroid/util/Size;

    iput-wide p3, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;->timestamp:J

    iput-boolean p5, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;->isBoundInLandscape:Z

    iput-boolean p6, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;->isInit:Z

    iput p7, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;->topToTopId:I

    iput p8, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;->bottomToBottomId:I

    iput p9, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;->topGuideLineY:I

    iput p10, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;->bottomGuideLineY:I

    iput p11, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;->actionLayoutGuideLineY:I

    iput p12, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;->orientation:F

    iput-wide p13, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;->timestampDiff:J

    return-void
.end method

.method public static copy$default(Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;FJI)Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;
    .locals 15

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;->previewSize:Lcom/motorola/camera/PreviewSize;

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;->viewSize:Landroid/util/Size;

    iget-wide v3, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;->timestamp:J

    iget-boolean v5, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;->isBoundInLandscape:Z

    iget-boolean v6, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;->isInit:Z

    iget v7, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;->topToTopId:I

    iget v8, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;->bottomToBottomId:I

    iget v9, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;->topGuideLineY:I

    iget v10, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;->bottomGuideLineY:I

    iget v11, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;->actionLayoutGuideLineY:I

    move/from16 v0, p4

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    iget-wide v12, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;->timestampDiff:J

    move-wide v13, v12

    goto :goto_0

    :cond_0
    move-wide/from16 v13, p2

    :goto_0
    const-string/jumbo p0, "viewSize"

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;

    move/from16 v12, p1

    invoke-direct/range {v0 .. v14}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;-><init>(Lcom/motorola/camera/PreviewSize;Landroid/util/Size;JZZIIIIIFJ)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    if-ne p0, p1, :cond_0

    goto/16 :goto_1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-class v1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_2

    :cond_2
    const-string v0, "null cannot be cast to non-null type com.motorola.camera.ui.controls_fold.gallery.GalleryComposeAdapter.GuideParameters"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;->previewSize:Lcom/motorola/camera/PreviewSize;

    iget-object v1, p1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;->previewSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/PreviewSize;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;->viewSize:Landroid/util/Size;

    iget-object v1, p1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;->viewSize:Landroid/util/Size;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    iget-wide v0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;->timestamp:J

    iget-wide v2, p1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;->timestamp:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;->isBoundInLandscape:Z

    iget-boolean v1, p1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;->isBoundInLandscape:Z

    if-eq v0, v1, :cond_6

    goto :goto_2

    :cond_6
    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;->isInit:Z

    iget-boolean v1, p1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;->isInit:Z

    if-eq v0, v1, :cond_7

    goto :goto_2

    :cond_7
    iget v0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;->topToTopId:I

    iget v1, p1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;->topToTopId:I

    if-eq v0, v1, :cond_8

    goto :goto_2

    :cond_8
    iget v0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;->bottomToBottomId:I

    iget v1, p1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;->bottomToBottomId:I

    if-eq v0, v1, :cond_9

    goto :goto_2

    :cond_9
    iget v0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;->topGuideLineY:I

    iget v1, p1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;->topGuideLineY:I

    if-eq v0, v1, :cond_a

    goto :goto_2

    :cond_a
    iget v0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;->bottomGuideLineY:I

    iget v1, p1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;->bottomGuideLineY:I

    if-eq v0, v1, :cond_b

    goto :goto_2

    :cond_b
    iget v0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;->actionLayoutGuideLineY:I

    iget v1, p1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;->actionLayoutGuideLineY:I

    if-eq v0, v1, :cond_c

    goto :goto_2

    :cond_c
    iget v0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;->orientation:F

    iget v1, p1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;->orientation:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_e

    iget-wide v0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;->timestampDiff:J

    iget-wide p0, p1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;->timestampDiff:J

    cmp-long p0, v0, p0

    if-eqz p0, :cond_d

    goto :goto_2

    :cond_d
    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_e
    :goto_2
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 14

    iget-wide v0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;->timestamp:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;->isBoundInLandscape:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;->isInit:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iget v0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;->topToTopId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;->bottomToBottomId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;->topGuideLineY:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;->bottomGuideLineY:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget v0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;->actionLayoutGuideLineY:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget v0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;->orientation:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    iget-wide v0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;->timestampDiff:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;->previewSize:Lcom/motorola/camera/PreviewSize;

    iget-object v3, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;->viewSize:Landroid/util/Size;

    filled-new-array/range {v2 .. v13}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "previewSize:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;->previewSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " viewSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;->viewSize:Landroid/util/Size;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " timestamp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;->timestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " isBoundInLandscape:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;->isBoundInLandscape:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isInit:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;->isInit:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " topToTopId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;->topToTopId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bottomToBottomId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;->bottomToBottomId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " topGuideLineY:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;->topGuideLineY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bottomGuideLineY:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;->bottomGuideLineY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " actionLayoutGuideLineY:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;->actionLayoutGuideLineY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " orientation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;->orientation:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " timestampDiff:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GuideParameters;->timestampDiff:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
