.class public final Lcom/airbnb/lottie/model/layer/Layer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final blendMode:I

.field public final blurEffect:Lcom/google/android/gms/tasks/zza;

.field public final composition:Lcom/airbnb/lottie/LottieComposition;

.field public final dropShadowEffect:Lcom/motorola/camera/AppFeatures;

.field public final hidden:Z

.field public final inOutKeyframes:Ljava/util/List;

.field public final layerId:J

.field public final layerName:Ljava/lang/String;

.field public final layerType:I

.field public final masks:Ljava/util/List;

.field public final matteType:I

.field public final parentId:J

.field public final preCompHeight:F

.field public final preCompWidth:F

.field public final refId:Ljava/lang/String;

.field public final shapes:Ljava/util/List;

.field public final solidColor:I

.field public final solidHeight:I

.field public final solidWidth:I

.field public final startFrame:F

.field public final text:Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

.field public final textProperties:Landroidx/sqlite/db/SimpleSQLiteQuery;

.field public final timeRemapping:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

.field public final timeStretch:F

.field public final transform:Lcom/airbnb/lottie/model/animatable/AnimatableTransform;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/airbnb/lottie/LottieComposition;Ljava/lang/String;JIJLjava/lang/String;Ljava/util/List;Lcom/airbnb/lottie/model/animatable/AnimatableTransform;IIIFFFFLcom/airbnb/lottie/model/animatable/AnimatableTextFrame;Landroidx/sqlite/db/SimpleSQLiteQuery;Ljava/util/List;ILcom/airbnb/lottie/model/animatable/AnimatableFloatValue;ZLcom/google/android/gms/tasks/zza;Lcom/motorola/camera/AppFeatures;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/Layer;->shapes:Ljava/util/List;

    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/Layer;->composition:Lcom/airbnb/lottie/LottieComposition;

    iput-object p3, p0, Lcom/airbnb/lottie/model/layer/Layer;->layerName:Ljava/lang/String;

    iput-wide p4, p0, Lcom/airbnb/lottie/model/layer/Layer;->layerId:J

    iput p6, p0, Lcom/airbnb/lottie/model/layer/Layer;->layerType:I

    iput-wide p7, p0, Lcom/airbnb/lottie/model/layer/Layer;->parentId:J

    iput-object p9, p0, Lcom/airbnb/lottie/model/layer/Layer;->refId:Ljava/lang/String;

    iput-object p10, p0, Lcom/airbnb/lottie/model/layer/Layer;->masks:Ljava/util/List;

    iput-object p11, p0, Lcom/airbnb/lottie/model/layer/Layer;->transform:Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    iput p12, p0, Lcom/airbnb/lottie/model/layer/Layer;->solidWidth:I

    iput p13, p0, Lcom/airbnb/lottie/model/layer/Layer;->solidHeight:I

    iput p14, p0, Lcom/airbnb/lottie/model/layer/Layer;->solidColor:I

    iput p15, p0, Lcom/airbnb/lottie/model/layer/Layer;->timeStretch:F

    move/from16 p1, p16

    iput p1, p0, Lcom/airbnb/lottie/model/layer/Layer;->startFrame:F

    move/from16 p1, p17

    iput p1, p0, Lcom/airbnb/lottie/model/layer/Layer;->preCompWidth:F

    move/from16 p1, p18

    iput p1, p0, Lcom/airbnb/lottie/model/layer/Layer;->preCompHeight:F

    move-object/from16 p1, p19

    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/Layer;->text:Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    move-object/from16 p1, p20

    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/Layer;->textProperties:Landroidx/sqlite/db/SimpleSQLiteQuery;

    move-object/from16 p1, p21

    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/Layer;->inOutKeyframes:Ljava/util/List;

    move/from16 p1, p22

    iput p1, p0, Lcom/airbnb/lottie/model/layer/Layer;->matteType:I

    move-object/from16 p1, p23

    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/Layer;->timeRemapping:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move/from16 p1, p24

    iput-boolean p1, p0, Lcom/airbnb/lottie/model/layer/Layer;->hidden:Z

    move-object/from16 p1, p25

    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/Layer;->blurEffect:Lcom/google/android/gms/tasks/zza;

    move-object/from16 p1, p26

    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/Layer;->dropShadowEffect:Lcom/motorola/camera/AppFeatures;

    move/from16 p1, p27

    iput p1, p0, Lcom/airbnb/lottie/model/layer/Layer;->blendMode:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 34
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/model/layer/Layer;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-static {p1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/Layer;->layerName:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-wide v2, p0, Lcom/airbnb/lottie/model/layer/Layer;->parentId:J

    .line 5
    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/Layer;->composition:Lcom/airbnb/lottie/LottieComposition;

    iget-object v5, v4, Lcom/airbnb/lottie/LottieComposition;->layerMap:Landroidx/collection/LongSparseArray;

    .line 6
    invoke-virtual {v5, v2, v3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/model/layer/Layer;

    if-eqz v2, :cond_1

    .line 7
    const-string v3, "\t\tParents: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget-object v3, v2, Lcom/airbnb/lottie/model/layer/Layer;->layerName:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget-wide v2, v2, Lcom/airbnb/lottie/model/layer/Layer;->parentId:J

    .line 11
    iget-object v5, v4, Lcom/airbnb/lottie/LottieComposition;->layerMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {v5, v2, v3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/model/layer/Layer;

    :goto_0
    if-eqz v2, :cond_0

    .line 12
    const-string v3, "->"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    iget-object v3, v2, Lcom/airbnb/lottie/model/layer/Layer;->layerName:Ljava/lang/String;

    .line 14
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    iget-wide v2, v2, Lcom/airbnb/lottie/model/layer/Layer;->parentId:J

    .line 16
    iget-object v5, v4, Lcom/airbnb/lottie/LottieComposition;->layerMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {v5, v2, v3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/model/layer/Layer;

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    :cond_1
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/Layer;->masks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\tMasks: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    :cond_2
    iget v2, p0, Lcom/airbnb/lottie/model/layer/Layer;->solidWidth:I

    if-eqz v2, :cond_3

    iget v3, p0, Lcom/airbnb/lottie/model/layer/Layer;->solidHeight:I

    if-eqz v3, :cond_3

    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\tBackground: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 22
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 23
    iget v5, p0, Lcom/airbnb/lottie/model/layer/Layer;->solidColor:I

    .line 24
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v2, v3, v5}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%dx%d %X\n"

    invoke-static {v4, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 25
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    :cond_3
    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/Layer;->shapes:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\tShapes:\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 29
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\t\t"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 30
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
