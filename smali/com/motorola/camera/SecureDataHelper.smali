.class public final Lcom/motorola/camera/SecureDataHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/play/core/splitinstall/testing/zzz;
.implements Lcom/google/android/play/core/splitinstall/internal/zzcb;
.implements Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView$OnItemClickListener;
.implements Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$AnnotationArgumentVisitor;
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptorVisitor;
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor$CopyBuilder;


# static fields
.field public static sInstance:Lcom/motorola/camera/SecureDataHelper;


# instance fields
.field public final synthetic $r8$classId:I

.field public mSecureDataList:Ljava/lang/Object;


# direct methods
.method public constructor <init>(FFFF)V
    .locals 1

    const/16 v0, 0xc

    iput v0, p0, Lcom/motorola/camera/SecureDataHelper;->$r8$classId:I

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/SecureDataHelper;->$r8$classId:I

    sparse-switch p1, :sswitch_data_0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    return-void

    .line 18
    :sswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    return-void

    .line 20
    :sswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    return-void

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_1
        0xb -> :sswitch_0
    .end sparse-switch
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/motorola/camera/SecureDataHelper;->$r8$classId:I

    iput-object p2, p0, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x5

    iput v0, p0, Lcom/motorola/camera/SecureDataHelper;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Lcom/motorola/camera/background/service/jms/db/TransactionDataBase;->Companion:Lcom/google/android/gms/dynamite/zzf;

    .line 4
    sget-object v1, Lcom/motorola/camera/background/service/jms/db/TransactionDataBase;->INSTANCE:Lcom/motorola/camera/background/service/jms/db/TransactionDataBase;

    if-nez v1, :cond_1

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    sget-object v1, Lcom/motorola/camera/background/service/jms/db/TransactionDataBase;->INSTANCE:Lcom/motorola/camera/background/service/jms/db/TransactionDataBase;

    if-nez v1, :cond_0

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "getApplicationContext(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v1, Lcom/motorola/camera/background/service/jms/db/TransactionDataBase;

    .line 8
    const-string/jumbo v2, "transaction_table.db"

    .line 9
    invoke-static {p1, v1, v2}, Landroidx/room/Room;->databaseBuilder(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p1

    const/4 v1, 0x0

    .line 10
    iput-boolean v1, p1, Landroidx/room/RoomDatabase$Builder;->requireMigration:Z

    const/4 v1, 0x1

    .line 11
    iput-boolean v1, p1, Landroidx/room/RoomDatabase$Builder;->allowDestructiveMigrationOnDowngrade:Z

    .line 12
    invoke-virtual {p1}, Landroidx/room/RoomDatabase$Builder;->build()Landroidx/room/RoomDatabase;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/background/service/jms/db/TransactionDataBase;

    .line 13
    sput-object p1, Lcom/motorola/camera/background/service/jms/db/TransactionDataBase;->INSTANCE:Lcom/motorola/camera/background/service/jms/db/TransactionDataBase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, p1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 14
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw p0

    .line 15
    :cond_1
    :goto_2
    invoke-virtual {v1}, Lcom/motorola/camera/background/service/jms/db/TransactionDataBase;->transactionDao()Lcom/motorola/camera/background/service/jms/db/TransactionDao_Impl;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public addFace(Landroid/hardware/camera2/params/Face;)V
    .locals 5

    iget-object p0, p0, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;

    invoke-direct {v1, p1}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;-><init>(Landroid/hardware/camera2/params/Face;)V

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->mFaceRects:[Landroid/graphics/Rect;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->faceCount:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_1

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->index:I

    rem-int/2addr v1, v2

    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->index:I

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->mSumLeft:I

    aget-object v1, v0, v1

    iget v4, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->mSumLeft:I

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->mSumTop:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->mSumTop:I

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->mSumRight:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->mSumRight:I

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->mSumBottom:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v1

    iput v3, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->mSumBottom:I

    goto :goto_0

    :cond_1
    add-int/2addr v1, v2

    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->faceCount:I

    :goto_0
    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->index:I

    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    aput-object v3, v0, v1

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->mSumLeft:I

    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->mSumLeft:I

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->mSumTop:I

    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->mSumTop:I

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->mSumRight:I

    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->mSumRight:I

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->mSumBottom:I

    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->mSumBottom:I

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->index:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->index:I

    return-void
.end method

.method public build()Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorFunctionDescriptor;

    return-object p0
.end method

.method public contains(FF)Z
    .locals 4

    .line 6
    iget-object p0, p0, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/RectF;

    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Landroid/graphics/RectF;->right:F

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    iget v2, p0, Landroid/graphics/RectF;->top:F

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v3, v2, p0

    if-lez v3, :cond_0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_0

    cmpg-float p1, p2, v2

    if-gtz p1, :cond_0

    cmpl-float p0, p2, p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public contains(Landroid/graphics/PointF;FFFF)Z
    .locals 2

    .line 1
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/SecureDataHelper;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, p2

    iget p2, p1, Landroid/graphics/PointF;->y:F

    .line 2
    invoke-virtual {p0, v0, p2}, Lcom/motorola/camera/SecureDataHelper;->contains(FF)Z

    move-result p2

    if-nez p2, :cond_1

    iget p2, p1, Landroid/graphics/PointF;->x:F

    add-float/2addr p2, p3

    iget p3, p1, Landroid/graphics/PointF;->y:F

    .line 3
    invoke-virtual {p0, p2, p3}, Lcom/motorola/camera/SecureDataHelper;->contains(FF)Z

    move-result p2

    if-nez p2, :cond_1

    iget p2, p1, Landroid/graphics/PointF;->x:F

    iget p3, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p3, p4

    .line 4
    invoke-virtual {p0, p2, p3}, Lcom/motorola/camera/SecureDataHelper;->contains(FF)Z

    move-result p2

    if-nez p2, :cond_1

    iget p2, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    add-float/2addr p1, p5

    .line 5
    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/SecureDataHelper;->contains(FF)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public forSurface(Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceCallback;Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V
    .locals 4

    const-string v0, "cameraId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast p0, Ljava/util/TreeMap;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;->cameraId:Ljava/lang/String;

    invoke-static {v3, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, v2, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;->surfaceType:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    if-ne v2, p3, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/ref/WeakReference;

    invoke-virtual {p3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/Surface;

    if-eqz p3, :cond_2

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/Surface;

    invoke-interface {p1, p2}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceCallback;->onSurface(Landroid/view/Surface;)V

    goto :goto_2

    :cond_4
    return-void
.end method

.method public getFilteredFaceRect(Landroid/hardware/camera2/params/Face;)Landroid/graphics/Rect;
    .locals 3

    iget-object p0, p0, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->mSumLeft:I

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->faceCount:I

    div-int/2addr p1, v0

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->mSumTop:I

    div-int/2addr v1, v0

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->mSumRight:I

    div-int/2addr v2, v0

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter$RectContainer;->mSumBottom:I

    div-int/2addr p0, v0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, v1, v2, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public height()F
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/RectF;

    iget v0, p0, Landroid/graphics/RectF;->top:F

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, p0

    return v0
.end method

.method public inset(FF)V
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/RectF;

    iget v0, p0, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/graphics/RectF;->left:F

    iget v0, p0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, p1

    iput v0, p0, Landroid/graphics/RectF;->right:F

    iget p1, p0, Landroid/graphics/RectF;->top:F

    sub-float/2addr p1, p2

    iput p1, p0, Landroid/graphics/RectF;->top:F

    iget p1, p0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr p1, p2

    iput p1, p0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public putUserData()Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor$CopyBuilder;
    .locals 0

    return-object p0
.end method

.method public scale(F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/RectF;

    iget v0, p0, Landroid/graphics/RectF;->left:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/graphics/RectF;->left:F

    iget v0, p0, Landroid/graphics/RectF;->top:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/graphics/RectF;->top:F

    iget v0, p0, Landroid/graphics/RectF;->right:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/graphics/RectF;->right:F

    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public selectById(JLkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$selectById$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$selectById$2;-><init>(Lcom/motorola/camera/SecureDataHelper;JLkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    sget-object p1, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    invoke-static {p1, v0, p0}, Lkotlinx/coroutines/JobKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/DeferredCoroutine;

    move-result-object p0

    invoke-virtual {p0, p3}, Lkotlinx/coroutines/JobSupport;->awaitInternal(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    return-object p0
.end method

.method public setAdditionalAnnotations(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor$CopyBuilder;
    .locals 1

    const-string v0, "additionalAnnotations"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public setCopyOverrides()Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor$CopyBuilder;
    .locals 0

    return-object p0
.end method

.method public setDispatchReceiverParameter(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;)Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor$CopyBuilder;
    .locals 0

    return-object p0
.end method

.method public setHiddenForResolutionEverywhereBesideSupercalls()Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor$CopyBuilder;
    .locals 0

    return-object p0
.end method

.method public setHiddenToOvercomeSignatureClash()Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor$CopyBuilder;
    .locals 0

    return-object p0
.end method

.method public setKind(I)Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor$CopyBuilder;
    .locals 1

    const-string v0, "kind"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(ILjava/lang/String;)V

    return-object p0
.end method

.method public setModality(Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;)Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor$CopyBuilder;
    .locals 0

    return-object p0
.end method

.method public setName(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor$CopyBuilder;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public setOwner(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor$CopyBuilder;
    .locals 1

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public setPreserveSourceElement()Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor$CopyBuilder;
    .locals 0

    return-object p0
.end method

.method public setReturnType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor$CopyBuilder;
    .locals 1

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public setSignatureChange()Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor$CopyBuilder;
    .locals 0

    return-object p0
.end method

.method public setSize(FF)V
    .locals 2

    iget-object p0, p0, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/RectF;

    neg-float v0, p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->left:F

    div-float v0, p2, v1

    iput v0, p0, Landroid/graphics/RectF;->top:F

    div-float/2addr p1, v1

    iput p1, p0, Landroid/graphics/RectF;->right:F

    neg-float p1, p2

    div-float/2addr p1, v1

    iput p1, p0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public setTypeParameters()Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor$CopyBuilder;
    .locals 0

    return-object p0
.end method

.method public setValueParameters(Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor$CopyBuilder;
    .locals 0

    return-object p0
.end method

.method public setVisibility(Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;)Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor$CopyBuilder;
    .locals 1

    const-string/jumbo v0, "visibility"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/motorola/camera/SecureDataHelper;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method

.method public visit(Lkotlin/reflect/jvm/internal/impl/name/Name;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public visitAnnotation(Lkotlin/reflect/jvm/internal/impl/name/ClassId;Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$AnnotationArgumentVisitor;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public visitArray(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$AnnotationArrayArgumentVisitor;
    .locals 1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/name/Name;->asString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "b"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor$KotlinMetadataArgumentVisitor$1;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor$KotlinMetadataArgumentVisitor$1;-><init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$AnnotationArgumentVisitor;I)V

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public visitClassDescriptor(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    move-object v1, p2

    check-cast v1, Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;

    iget-object p2, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->options:Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;->getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;

    move-result-object v0

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;->ENUM_ENTRY:Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v2, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->getStartFromName()Z

    move-result v2

    const/4 v5, 0x0

    const-string v6, "companion object"

    const-string v7, "getVisibility(...)"

    if-nez v2, :cond_12

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;->getContextReceivers()Ljava/util/List;

    move-result-object v2

    const-string v8, "getContextReceivers(...)"

    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->renderContextReceivers(Ljava/lang/StringBuilder;Ljava/util/List;)V

    invoke-virtual {p0, v1, p1, v5}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->renderAnnotations(Ljava/lang/StringBuilder;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotated;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationUseSiteTarget;)V

    if-nez v0, :cond_1

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;->getVisibility()Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;

    move-result-object v2

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2, v1}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->renderVisibility(Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;Ljava/lang/StringBuilder;)Z

    :cond_1
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;->getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;

    move-result-object v2

    sget-object v8, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;->INTERFACE:Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;

    if-ne v2, v8, :cond_2

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;->getModality()Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    move-result-object v2

    sget-object v8, Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;->ABSTRACT:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    if-eq v2, v8, :cond_4

    :cond_2
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;->getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;

    move-result-object v2

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;->isSingleton()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;->getModality()Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    move-result-object v2

    sget-object v8, Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;->FINAL:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    if-eq v2, v8, :cond_4

    :cond_3
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;->getModality()Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    move-result-object v2

    const-string v8, "getModality(...)"

    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->implicitModalityWithoutExtensions(Lkotlin/reflect/jvm/internal/impl/descriptors/MemberDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    move-result-object v8

    invoke-virtual {p0, v2, v1, v8}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->renderModality(Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Ljava/lang/StringBuilder;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;)V

    :cond_4
    invoke-virtual {p0, p1, v1}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->renderMemberModifiers(Lkotlin/reflect/jvm/internal/impl/descriptors/MemberDescriptor;Ljava/lang/StringBuilder;)V

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->getModifiers()Ljava/util/Set;

    move-result-object v2

    sget-object v8, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;->INNER:Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;

    invoke-interface {v2, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptorWithTypeParameters;->isInner()Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v4

    goto :goto_1

    :cond_5
    move v2, v3

    :goto_1
    const-string v8, "inner"

    invoke-virtual {p0, v1, v2, v8}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->renderModifier(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->getModifiers()Ljava/util/Set;

    move-result-object v2

    sget-object v8, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;->DATA:Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;

    invoke-interface {v2, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;->isData()Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v4

    goto :goto_2

    :cond_6
    move v2, v3

    :goto_2
    const-string v8, "data"

    invoke-virtual {p0, v1, v2, v8}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->renderModifier(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->getModifiers()Ljava/util/Set;

    move-result-object v2

    sget-object v8, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;->INLINE:Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;

    invoke-interface {v2, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;->isInline()Z

    move-result v2

    if-eqz v2, :cond_7

    move v2, v4

    goto :goto_3

    :cond_7
    move v2, v3

    :goto_3
    const-string v8, "inline"

    invoke-virtual {p0, v1, v2, v8}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->renderModifier(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->getModifiers()Ljava/util/Set;

    move-result-object v2

    sget-object v8, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;->VALUE:Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;

    invoke-interface {v2, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;->isValue()Z

    move-result v2

    if-eqz v2, :cond_8

    move v2, v4

    goto :goto_4

    :cond_8
    move v2, v3

    :goto_4
    const-string/jumbo v8, "value"

    invoke-virtual {p0, v1, v2, v8}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->renderModifier(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->getModifiers()Ljava/util/Set;

    move-result-object v2

    sget-object v8, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;->FUN:Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;

    invoke-interface {v2, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;->isFun()Z

    move-result v2

    if-eqz v2, :cond_9

    move v2, v4

    goto :goto_5

    :cond_9
    move v2, v3

    :goto_5
    const-string v8, "fun"

    invoke-virtual {p0, v1, v2, v8}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->renderModifier(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    instance-of v2, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeAliasDescriptor;

    if-eqz v2, :cond_a

    const-string/jumbo v2, "typealias"

    goto :goto_6

    :cond_a
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;->isCompanionObject()Z

    move-result v2

    if-eqz v2, :cond_b

    move-object v2, v6

    goto :goto_6

    :cond_b
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;->getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eqz v2, :cond_11

    if-eq v2, v4, :cond_10

    const/4 v8, 0x2

    if-eq v2, v8, :cond_f

    const/4 v8, 0x3

    if-eq v2, v8, :cond_e

    const/4 v8, 0x4

    if-eq v2, v8, :cond_d

    const/4 v8, 0x5

    if-ne v2, v8, :cond_c

    const-string v2, "object"

    goto :goto_6

    :cond_c
    new-instance p0, Lcom/google/gson/JsonParseException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_d
    const-string v2, "annotation class"

    goto :goto_6

    :cond_e
    const-string v2, "enum entry"

    goto :goto_6

    :cond_f
    const-string v2, "enum class"

    goto :goto_6

    :cond_10
    const-string v2, "interface"

    goto :goto_6

    :cond_11
    const-string v2, "class"

    :goto_6
    invoke-virtual {p0, v2}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->renderKeyword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->isCompanionObject(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Z

    move-result v2

    if-nez v2, :cond_14

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->getStartFromName()Z

    move-result v2

    if-nez v2, :cond_13

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->renderSpaceIfNeeded(Ljava/lang/StringBuilder;)V

    :cond_13
    invoke-virtual {p0, p1, v1, v4}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->renderName(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Ljava/lang/StringBuilder;Z)V

    goto :goto_7

    :cond_14
    iget-object v2, p2, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->renderCompanionObjectName$delegate:Lcom/motorola/camera/cli/content/CliContentManager$special$$inlined$observable$1;

    sget-object v8, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v9, 0x1f

    aget-object v8, v8, v9

    invoke-virtual {v2, p2, v8}, Lkotlin/properties/ObservableProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string v8, "getName(...)"

    if-eqz v2, :cond_16

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->getStartFromName()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_15
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->renderSpaceIfNeeded(Ljava/lang/StringBuilder;)V

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    move-result-object v2

    if-eqz v2, :cond_16

    const-string v6, "of "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;->getName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v2

    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->renderName(Lkotlin/reflect/jvm/internal/impl/name/Name;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_16
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->getVerbose()Z

    move-result v2

    if-nez v2, :cond_17

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;->getName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v2

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/name/SpecialNames;->DEFAULT_NAME_FOR_COMPANION_OBJECT:Lkotlin/reflect/jvm/internal/impl/name/Name;

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    :cond_17
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->getStartFromName()Z

    move-result v2

    if-nez v2, :cond_18

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->renderSpaceIfNeeded(Ljava/lang/StringBuilder;)V

    :cond_18
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;->getName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v2

    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2, v4}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->renderName(Lkotlin/reflect/jvm/internal/impl/name/Name;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_19
    :goto_7
    if-eqz v0, :cond_1a

    goto/16 :goto_9

    :cond_1a
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;->getDeclaredTypeParameters()Ljava/util/List;

    move-result-object v8

    const-string v0, "getDeclaredTypeParameters(...)"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v8, v3}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->renderTypeParameters(Ljava/lang/StringBuilder;Ljava/util/List;Z)V

    invoke-virtual {p0, p1, v1}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->renderCapturedTypeParametersIfRequired(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptorWithTypeParameters;Ljava/lang/StringBuilder;)V

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;->getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;->isSingleton()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p2, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->classWithPrimaryConstructor$delegate:Lcom/motorola/camera/cli/content/CliContentManager$special$$inlined$observable$1;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v3, 0x7

    aget-object v2, v2, v3

    invoke-virtual {v0, p2, v2}, Lkotlin/properties/ObservableProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;->getUnsubstitutedPrimaryConstructor()Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl;

    move-result-object v0

    if-eqz v0, :cond_1b

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1, v0, v5}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->renderAnnotations(Ljava/lang/StringBuilder;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotated;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationUseSiteTarget;)V

    move-object v2, v0

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->getVisibility()Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;

    move-result-object v3

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v3, v1}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->renderVisibility(Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;Ljava/lang/StringBuilder;)Z

    const-string v3, "constructor"

    invoke-virtual {p0, v3}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->renderKeyword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->getValueParameters()Ljava/util/List;

    move-result-object v2

    const-string v3, "getValueParameters(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;->hasSynthesizedParameterNames()Z

    move-result v0

    invoke-virtual {p0, v1, v2, v0}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->renderValueParameters(Ljava/lang/StringBuilder;Ljava/util/List;Z)V

    :cond_1b
    iget-object v0, p2, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->withoutSuperTypes$delegate:Lcom/motorola/camera/cli/content/CliContentManager$special$$inlined$observable$1;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v3, 0x16

    aget-object v2, v2, v3

    invoke-virtual {v0, p2, v2}, Lkotlin/properties/ObservableProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1c

    goto :goto_8

    :cond_1c
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;->getDefaultType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p2

    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->isNothing(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result p2

    if-eqz p2, :cond_1d

    goto :goto_8

    :cond_1d
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;->getTypeConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getSupertypes()Ljava/util/Collection;

    move-result-object p1

    const-string p2, "getSupertypes(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1f

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p2

    if-ne p2, v4, :cond_1e

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->isAnyOrNullableAny(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result p2

    if-eqz p2, :cond_1e

    goto :goto_8

    :cond_1e
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->renderSpaceIfNeeded(Ljava/lang/StringBuilder;)V

    const-string p2, ": "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    new-instance v5, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl$$Lambda$2;

    const/4 p1, 0x1

    invoke-direct {v5, p0, p1}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl$$Lambda$2;-><init>(Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;I)V

    const/16 v6, 0x3c

    const-string v2, ", "

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lkotlin/collections/CollectionsKt;->joinTo$default(Ljava/lang/Iterable;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)V

    :cond_1f
    :goto_8
    invoke-virtual {p0, v1, v8}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->renderWhereSuffix(Ljava/lang/StringBuilder;Ljava/util/List;)V

    :goto_9
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public visitClassLiteral(Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/resolve/constants/ClassLiteralValue;)V
    .locals 0

    return-void
.end method

.method public visitConstructorDescriptor(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p1

    iget-boolean v1, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl;->isPrimary:Z

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, p0

    iget-object v3, v3, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v0, v4}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->renderAnnotations(Ljava/lang/StringBuilder;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotated;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationUseSiteTarget;)V

    iget-object v4, v3, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->options:Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;

    iget-object v5, v4, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->renderDefaultVisibility$delegate:Lcom/motorola/camera/cli/content/CliContentManager$special$$inlined$observable$1;

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v7, 0xd

    aget-object v7, v6, v7

    invoke-virtual {v5, v4, v7}, Lkotlin/properties/ObservableProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v5, :cond_0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl;->getConstructedClass()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    move-result-object v5

    invoke-interface {v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;->getModality()Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    move-result-object v5

    sget-object v9, Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;->SEALED:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    if-eq v5, v9, :cond_1

    :cond_0
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->getVisibility()Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;

    move-result-object v5

    const-string v9, "getVisibility(...)"

    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v5, v2}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->renderVisibility(Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;Ljava/lang/StringBuilder;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v8

    goto :goto_0

    :cond_1
    move v5, v7

    :goto_0
    invoke-virtual {v3, v2, v0}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->renderMemberKind(Ljava/lang/StringBuilder;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)V

    iget-object v9, v4, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->renderConstructorKeyword$delegate:Lcom/motorola/camera/cli/content/CliContentManager$special$$inlined$observable$1;

    const/16 v10, 0x28

    aget-object v10, v6, v10

    invoke-virtual {v9, v4, v10}, Lkotlin/properties/ObservableProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_3

    if-eqz v1, :cond_3

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    move v5, v7

    goto :goto_2

    :cond_3
    :goto_1
    move v5, v8

    :goto_2
    if-eqz v5, :cond_4

    const-string v9, "constructor"

    invoke-virtual {v3, v9}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->renderKeyword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    move-result-object v9

    const-string v10, "getContainingDeclaration(...)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v10, v4, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->secondaryConstructorsAsPrimary$delegate:Lcom/motorola/camera/cli/content/CliContentManager$special$$inlined$observable$1;

    const/16 v11, 0x19

    aget-object v12, v6, v11

    invoke-virtual {v10, v4, v12}, Lkotlin/properties/ObservableProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_6

    if-eqz v5, :cond_5

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v3, v9, v2, v8}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->renderName(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Ljava/lang/StringBuilder;Z)V

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->getTypeParameters()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v2, v5, v7}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->renderTypeParameters(Ljava/lang/StringBuilder;Ljava/util/List;Z)V

    :cond_6
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->getValueParameters()Ljava/util/List;

    move-result-object v5

    const-string v7, "getValueParameters(...)"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;->hasSynthesizedParameterNames()Z

    move-result v8

    invoke-virtual {v3, v2, v5, v8}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->renderValueParameters(Ljava/lang/StringBuilder;Ljava/util/List;Z)V

    iget-object v5, v4, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->renderConstructorDelegation$delegate:Lcom/motorola/camera/cli/content/CliContentManager$special$$inlined$observable$1;

    const/16 v8, 0xf

    aget-object v6, v6, v8

    invoke-virtual {v5, v4, v6}, Lkotlin/properties/ObservableProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_9

    if-nez v1, :cond_9

    invoke-interface {v9}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;->getUnsubstitutedPrimaryConstructor()Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl;

    move-result-object v1

    if-eqz v1, :cond_9

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->getValueParameters()Ljava/util/List;

    move-result-object v1

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;

    invoke-virtual {v6}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;->declaresDefaultValue()Z

    move-result v7

    if-nez v7, :cond_7

    iget-object v6, v6, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;->varargElementType:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    if-nez v6, :cond_7

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, " : "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "this"

    invoke-virtual {v3, v1}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->renderKeyword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v16, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRenderer$$Lambda$0;->INSTANCE$12:Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRenderer$$Lambda$0;

    const/16 v17, 0x18

    const-string v13, ", "

    const-string v14, "("

    const-string v15, ")"

    invoke-static/range {v12 .. v17}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    iget-object v1, v4, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->secondaryConstructorsAsPrimary$delegate:Lcom/motorola/camera/cli/content/CliContentManager$special$$inlined$observable$1;

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    aget-object v5, v5, v11

    invoke-virtual {v1, v4, v5}, Lkotlin/properties/ObservableProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->getTypeParameters()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->renderWhereSuffix(Ljava/lang/StringBuilder;Ljava/util/List;)V

    :cond_a
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public visitEnd()V
    .locals 0

    return-void
.end method

.method public visitEnum(Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/name/ClassId;Lkotlin/reflect/jvm/internal/impl/name/Name;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic visitFunctionDescriptor(Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/SecureDataHelper;->visitFunctionDescriptor(Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;Ljava/lang/StringBuilder;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public visitFunctionDescriptor(Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;Ljava/lang/StringBuilder;)V
    .locals 10

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;

    .line 3
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->options:Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->options:Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;

    .line 4
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->getStartFromName()Z

    move-result v2

    const-string v3, "getTypeParameters(...)"

    const/4 v4, 0x1

    if-nez v2, :cond_c

    .line 5
    iget-object v2, v1, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->startFromDeclarationKeyword$delegate:Lcom/motorola/camera/cli/content/CliContentManager$special$$inlined$observable$1;

    .line 6
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v6, 0x5

    aget-object v6, v5, v6

    invoke-virtual {v2, v1, v6}, Lkotlin/properties/ObservableProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_b

    .line 7
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;->getContextReceiverParameters()Ljava/util/List;

    move-result-object v2

    const-string v6, "getContextReceiverParameters(...)"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2, v2}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->renderContextReceivers(Ljava/lang/StringBuilder;Ljava/util/List;)V

    const/4 v2, 0x0

    .line 8
    invoke-virtual {p0, p2, p1, v2}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->renderAnnotations(Ljava/lang/StringBuilder;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotated;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationUseSiteTarget;)V

    .line 9
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/MemberDescriptor;->getVisibility()Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;

    move-result-object v2

    const-string v6, "getVisibility(...)"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2, p2}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->renderVisibility(Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;Ljava/lang/StringBuilder;)Z

    .line 10
    invoke-virtual {p0, p2, p1}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->renderModalityForCallable(Ljava/lang/StringBuilder;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)V

    .line 11
    iget-object v2, v1, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->includeAdditionalModifiers$delegate:Lcom/motorola/camera/cli/content/CliContentManager$special$$inlined$observable$1;

    const/16 v6, 0x2c

    .line 12
    aget-object v7, v5, v6

    invoke-virtual {v2, v1, v7}, Lkotlin/properties/ObservableProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 13
    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->renderMemberModifiers(Lkotlin/reflect/jvm/internal/impl/descriptors/MemberDescriptor;Ljava/lang/StringBuilder;)V

    .line 14
    :cond_0
    invoke-virtual {p0, p2, p1}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->renderOverride(Ljava/lang/StringBuilder;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)V

    .line 15
    iget-object v2, v1, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->includeAdditionalModifiers$delegate:Lcom/motorola/camera/cli/content/CliContentManager$special$$inlined$observable$1;

    .line 16
    aget-object v5, v5, v6

    invoke-virtual {v2, v1, v5}, Lkotlin/properties/ObservableProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 17
    const-string/jumbo v5, "suspend"

    if-eqz v2, :cond_9

    .line 18
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;->isOperator()Z

    move-result v2

    const/16 v6, 0x27

    const/4 v7, 0x0

    const-string v8, "getOverriddenDescriptors(...)"

    if-eqz v2, :cond_4

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;->getOverriddenDescriptors()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Iterable;

    .line 19
    move-object v9, v2

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_0

    .line 20
    :cond_1
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;

    .line 21
    invoke-interface {v9}, Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;->isOperator()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 22
    iget-object v2, v1, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->alwaysRenderModifiers$delegate:Lcom/motorola/camera/cli/content/CliContentManager$special$$inlined$observable$1;

    .line 23
    sget-object v9, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    aget-object v9, v9, v6

    invoke-virtual {v2, v1, v9}, Lkotlin/properties/ObservableProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    :goto_0
    move v2, v4

    goto :goto_1

    :cond_4
    move v2, v7

    .line 24
    :goto_1
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;->isInfix()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;->getOverriddenDescriptors()Ljava/util/Collection;

    move-result-object v9

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Ljava/lang/Iterable;

    .line 25
    move-object v8, v9

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_2

    .line 26
    :cond_5
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;

    .line 27
    invoke-interface {v9}, Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;->isInfix()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 28
    iget-object v8, v1, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->alwaysRenderModifiers$delegate:Lcom/motorola/camera/cli/content/CliContentManager$special$$inlined$observable$1;

    .line 29
    sget-object v9, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    aget-object v6, v9, v6

    invoke-virtual {v8, v1, v6}, Lkotlin/properties/ObservableProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    :goto_2
    move v7, v4

    .line 30
    :cond_8
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;->isTailrec()Z

    move-result v1

    const-string/jumbo v6, "tailrec"

    invoke-virtual {p0, p2, v1, v6}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->renderModifier(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 31
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;->isSuspend()Z

    move-result v1

    invoke-virtual {p0, p2, v1, v5}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->renderModifier(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 32
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;->isInline()Z

    move-result v1

    const-string v5, "inline"

    invoke-virtual {p0, p2, v1, v5}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->renderModifier(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 33
    const-string v1, "infix"

    invoke-virtual {p0, p2, v7, v1}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->renderModifier(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 34
    const-string v1, "operator"

    invoke-virtual {p0, p2, v2, v1}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->renderModifier(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    goto :goto_3

    .line 35
    :cond_9
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;->isSuspend()Z

    move-result v1

    invoke-virtual {p0, p2, v1, v5}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->renderModifier(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 36
    :goto_3
    invoke-virtual {p0, p2, p1}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->renderMemberKind(Ljava/lang/StringBuilder;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)V

    .line 37
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->getVerbose()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 38
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;->isHiddenToOvercomeSignatureClash()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 39
    const-string v1, "/*isHiddenToOvercomeSignatureClash*/ "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    :cond_a
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;->isHiddenForResolutionEverywhereBesideSupercalls()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 41
    const-string v1, "/*isHiddenForResolutionEverywhereBesideSupercalls*/ "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    :cond_b
    const-string v1, "fun"

    invoke-virtual {p0, v1}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->renderKeyword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;->getTypeParameters()Ljava/util/List;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2, v1, v4}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->renderTypeParameters(Ljava/lang/StringBuilder;Ljava/util/List;Z)V

    .line 44
    invoke-virtual {p0, p2, p1}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->renderReceiver(Ljava/lang/StringBuilder;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)V

    .line 45
    :cond_c
    invoke-virtual {p0, p1, p2, v4}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->renderName(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Ljava/lang/StringBuilder;Z)V

    .line 46
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;->getValueParameters()Ljava/util/List;

    move-result-object v1

    const-string v2, "getValueParameters(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;->hasSynthesizedParameterNames()Z

    move-result v2

    invoke-virtual {p0, p2, v1, v2}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->renderValueParameters(Ljava/lang/StringBuilder;Ljava/util/List;Z)V

    .line 47
    invoke-virtual {p0, p2, p1}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->renderReceiverAfterName(Ljava/lang/StringBuilder;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)V

    .line 48
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;->getReturnType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v1

    .line 49
    iget-object v2, v0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->withoutReturnType$delegate:Lcom/motorola/camera/cli/content/CliContentManager$special$$inlined$observable$1;

    .line 50
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v5, 0xa

    aget-object v5, v4, v5

    invoke-virtual {v2, v0, v5}, Lkotlin/properties/ObservableProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_f

    .line 51
    iget-object v2, v0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->unitReturnType$delegate:Lcom/motorola/camera/cli/content/CliContentManager$special$$inlined$observable$1;

    const/16 v5, 0x9

    .line 52
    aget-object v4, v4, v5

    invoke-virtual {v2, v0, v4}, Lkotlin/properties/ObservableProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_d

    if-eqz v1, :cond_d

    .line 53
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->BUILTINS_MODULE_NAME:Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 54
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->unit:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    invoke-static {v1, v0}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->isNotNullConstructedFromGivenClass(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 55
    :cond_d
    const-string v0, ": "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_e

    const-string v0, "[NULL]"

    goto :goto_4

    :cond_e
    invoke-virtual {p0, v1}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->renderType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    :cond_f
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;->getTypeParameters()Ljava/util/List;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2, p1}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->renderWhereSuffix(Ljava/lang/StringBuilder;Ljava/util/List;)V

    return-void
.end method

.method public visitModuleDeclaration(Ljava/lang/Object;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;

    const/4 v0, 0x1

    invoke-virtual {p0, p2, p1, v0}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->renderName(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Ljava/lang/StringBuilder;Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public visitPackageFragmentDescriptor(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PackageFragmentDescriptorImpl;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PackageFragmentDescriptorImpl;->fqName:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v1, "package-fragment"

    invoke-virtual {p0, v1}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->renderKeyword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/name/FqName;->fqName:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    const-string v1, "fqName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;->pathSegments$collectSegmentsOf(Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/geometry/CornerRadius;->renderFqName(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, " "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->options:Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->getDebugMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, " in "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PackageFragmentDescriptorImpl;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->renderName(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Ljava/lang/StringBuilder;Z)V

    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public visitPackageViewDescriptor(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/LazyPackageViewDescriptorImpl;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/LazyPackageViewDescriptorImpl;->fqName:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v1, "package"

    invoke-virtual {p0, v1}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->renderKeyword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/name/FqName;->fqName:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    const-string v1, "fqName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;->pathSegments$collectSegmentsOf(Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/geometry/CornerRadius;->renderFqName(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, " "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->options:Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->getDebugMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, " in context of "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/LazyPackageViewDescriptorImpl;->module:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->renderName(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Ljava/lang/StringBuilder;Z)V

    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public visitPropertyAccessorDescriptor(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyAccessorDescriptorImpl;Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;

    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->options:Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;

    iget-object v2, v1, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->propertyAccessorRenderingPolicy$delegate:Lcom/motorola/camera/cli/content/CliContentManager$special$$inlined$observable$1;

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v4, 0x20

    aget-object v3, v3, v4

    invoke-virtual {v2, v1, v3}, Lkotlin/properties/ObservableProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/renderer/PropertyAccessorRenderingPolicy;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 p3, 0x1

    if-eq v1, p3, :cond_1

    const/4 p0, 0x2

    if-ne v1, p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/google/gson/JsonParseException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/SecureDataHelper;->visitFunctionDescriptor(Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;Ljava/lang/StringBuilder;)V

    return-void

    :cond_2
    invoke-virtual {v0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->renderMemberModifiers(Lkotlin/reflect/jvm/internal/impl/descriptors/MemberDescriptor;Ljava/lang/StringBuilder;)V

    const-string p0, " for "

    invoke-virtual {p3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyAccessorDescriptorImpl;->getCorrespondingProperty()Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;

    move-result-object p0

    const-string p1, "getCorrespondingProperty(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p0, p2}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->access$renderProperty(Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public visitPropertyDescriptor(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ljava/lang/StringBuilder;

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;

    invoke-static {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->access$renderProperty(Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;Ljava/lang/StringBuilder;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public visitPropertyGetterDescriptor(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyGetterDescriptorImpl;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ljava/lang/StringBuilder;

    const-string v0, "getter"

    invoke-virtual {p0, p1, p2, v0}, Lcom/motorola/camera/SecureDataHelper;->visitPropertyAccessorDescriptor(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyAccessorDescriptorImpl;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public visitPropertySetterDescriptor(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertySetterDescriptorImpl;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "setter"

    invoke-virtual {p0, p1, p2, v0}, Lcom/motorola/camera/SecureDataHelper;->visitPropertyAccessorDescriptor(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyAccessorDescriptorImpl;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public visitReceiverParameterDescriptor(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorImpl;->getName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public visitTypeAliasDescriptor(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeAliasDescriptor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->renderAnnotations(Ljava/lang/StringBuilder;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotated;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationUseSiteTarget;)V

    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeAliasDescriptor;->visibilityImpl:Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;

    const-string v1, "getVisibility(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->renderVisibility(Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;Ljava/lang/StringBuilder;)Z

    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->renderMemberModifiers(Lkotlin/reflect/jvm/internal/impl/descriptors/MemberDescriptor;Ljava/lang/StringBuilder;)V

    const-string/jumbo v0, "typealias"

    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->renderKeyword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->renderName(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Ljava/lang/StringBuilder;Z)V

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeAliasDescriptor;->getDeclaredTypeParameters()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v0, v1}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->renderTypeParameters(Ljava/lang/StringBuilder;Ljava/util/List;Z)V

    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->renderCapturedTypeParametersIfRequired(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptorWithTypeParameters;Ljava/lang/StringBuilder;)V

    const-string v0, " = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedTypeAliasDescriptor;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedTypeAliasDescriptor;->getUnderlyingType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->renderType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public visitTypeParameterDescriptor(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->renderTypeParameter(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;Ljava/lang/StringBuilder;Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public visitValueParameterDescriptor(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2, v0}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->renderValueParameter(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;ZLjava/lang/StringBuilder;Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public zza()Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lcom/motorola/camera/SecureDataHelper;->$r8$classId:I

    const/4 v1, 0x5

    const-string v2, "PlayCore"

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/PermissionCallback;

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/PermissionCallback;->mFsmContext:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/play/core/splitinstall/zzac;

    .line 2
    iget-object p0, p0, Lcom/google/android/play/core/splitinstall/zzac;->zza:Landroid/content/Context;

    .line 3
    new-instance v0, Lcom/google/android/play/core/splitinstall/zzbc;

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sget-object v3, Lcom/google/android/play/core/splitinstall/internal/zzbu;->zza:Lkotlinx/coroutines/internal/Symbol;

    .line 6
    const-string v3, "com.android.vending"

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-boolean v4, v4, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v4, :cond_5

    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v6, 0x40

    .line 8
    invoke-virtual {v4, v3, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_4

    array-length v4, v3

    if-nez v4, :cond_0

    goto :goto_2

    :cond_0
    :goto_0
    if-ge v5, v4, :cond_5

    .line 9
    aget-object v1, v3, v5

    .line 10
    invoke-virtual {v1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v1

    .line 11
    :try_start_1
    const-string v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    .line 12
    invoke-virtual {v2, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 13
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    const/16 v2, 0xb

    .line 14
    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :catch_0
    const-string v1, ""

    .line 15
    :goto_1
    const-string v2, "8P1sW0EPJcslw7UzRsiXL64w-O50Ed-RBICtay1g24M"

    .line 16
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Landroid/os/Build;->TAGS:Ljava/lang/String;

    const-string v6, "dev-keys"

    .line 17
    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string/jumbo v6, "test-keys"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const-string v2, "GXWy8XF3vIml3_MfnmSmyuKBpT3B0dWbHRR_4cgq-gA"

    .line 18
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 19
    :cond_3
    new-instance v1, Lcom/google/android/play/core/splitinstall/internal/zzaf;

    .line 20
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 21
    sget-object p0, Lcom/google/android/play/core/splitinstall/zzbc;->zzb:Lkotlinx/coroutines/internal/Symbol;

    .line 22
    invoke-direct {v1, p0}, Lcom/google/android/play/core/splitinstall/internal/zzaf;-><init>(Lkotlinx/coroutines/internal/Symbol;)V

    goto :goto_3

    .line 23
    :cond_4
    :goto_2
    sget-object p0, Lcom/google/android/play/core/splitinstall/internal/zzbu;->zza:Lkotlinx/coroutines/internal/Symbol;

    new-array v3, v5, [Ljava/lang/Object;

    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object p0, p0, Lkotlinx/coroutines/internal/Symbol;->symbol:Ljava/lang/String;

    .line 26
    const-string v1, "Phonesky package is not signed -- possibly self-built package. Could not verify."

    invoke-static {p0, v1, v3}, Lkotlinx/coroutines/internal/Symbol;->zzf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :catch_1
    :cond_5
    :goto_3
    return-object v0

    .line 27
    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/play/core/splitinstall/internal/zzcb;

    invoke-interface {p0}, Lcom/google/android/play/core/splitinstall/internal/zzcb;->zza()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/File;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto/16 :goto_6

    .line 28
    :cond_6
    sget-object v0, Lcom/google/android/play/core/splitinstall/testing/zzaa;->zza:Lkotlinx/coroutines/internal/Symbol;

    .line 29
    const-class v0, Ljava/lang/Throwable;

    new-instance v3, Ljava/io/File;

    const-string v4, "local_testing_config.xml"

    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 30
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_7

    .line 31
    sget-object p0, Lcom/google/android/play/core/splitinstall/testing/zzc;->zza:Lcom/google/android/play/core/splitinstall/testing/zzc;

    goto :goto_6

    .line 32
    :cond_7
    :try_start_2
    new-instance p0, Ljava/io/FileReader;

    invoke-direct {p0, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 33
    :try_start_3
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3

    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 34
    invoke-interface {v3, p0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    new-instance v5, Lcom/google/android/play/core/splitinstall/testing/zzaa;

    .line 35
    invoke-direct {v5, v3}, Lcom/google/android/play/core/splitinstall/testing/zzaa;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    const-string v3, "local-testing-config"

    new-instance v6, Lcom/google/android/gms/tasks/zzb;

    invoke-direct {v6, v5}, Lcom/google/android/gms/tasks/zzb;-><init>(Ljava/lang/Object;)V

    .line 36
    invoke-virtual {v5, v3, v6}, Lcom/google/android/play/core/splitinstall/testing/zzaa;->zze(Ljava/lang/String;Lcom/google/android/play/core/splitinstall/testing/zzz;)V

    iget-object v3, v5, Lcom/google/android/play/core/splitinstall/testing/zzaa;->zzc:Landroidx/sqlite/db/SimpleSQLiteQuery;

    .line 37
    invoke-virtual {v3}, Landroidx/sqlite/db/SimpleSQLiteQuery;->zze()Lcom/google/android/play/core/splitinstall/testing/zzc;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 38
    :try_start_4
    invoke-virtual {p0}, Ljava/io/Reader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    move-object p0, v0

    goto :goto_6

    :catch_2
    move-exception p0

    goto :goto_5

    :catchall_0
    move-exception v3

    .line 39
    :try_start_5
    invoke-virtual {p0}, Ljava/io/Reader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p0

    :try_start_6
    const-string v5, "addSuppressed"

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v6

    .line 40
    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v3, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 41
    :catch_3
    :goto_4
    :try_start_7
    throw v3
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_2

    .line 42
    :goto_5
    sget-object v0, Lcom/google/android/play/core/splitinstall/testing/zzaa;->zza:Lkotlinx/coroutines/internal/Symbol;

    .line 43
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v4, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 44
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v0, v0, Lkotlinx/coroutines/internal/Symbol;->symbol:Ljava/lang/String;

    .line 46
    const-string v1, "%s can not be parsed, using default. Error: %s"

    invoke-static {v0, v1, p0}, Lkotlinx/coroutines/internal/Symbol;->zzf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_8
    sget-object p0, Lcom/google/android/play/core/splitinstall/testing/zzc;->zza:Lcom/google/android/play/core/splitinstall/testing/zzc;

    :goto_6
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public zza()V
    .locals 4

    iget-object p0, p0, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/play/core/splitinstall/testing/zzaa;

    const/4 v0, 0x0

    .line 48
    :goto_0
    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/testing/zzaa;->zzb:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 49
    invoke-interface {v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "defaultErrorCode"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/play/core/splitinstall/testing/zzaa;->zzc:Landroidx/sqlite/db/SimpleSQLiteQuery;

    .line 50
    invoke-interface {v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    .line 51
    sget-object v3, Lcom/google/android/play/core/splitinstall/model/zza;->zzc:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    .line 52
    iput-object v3, v2, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    goto :goto_1

    .line 53
    :cond_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, " is unknown error."

    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 54
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 55
    :cond_2
    new-instance v0, Lcom/motorola/camera/PermissionCallback;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lcom/motorola/camera/PermissionCallback;-><init>(ILjava/lang/Object;)V

    const-string/jumbo v1, "split-install-error"

    .line 56
    invoke-virtual {p0, v1, v0}, Lcom/google/android/play/core/splitinstall/testing/zzaa;->zze(Ljava/lang/String;Lcom/google/android/play/core/splitinstall/testing/zzz;)V

    return-void
.end method
