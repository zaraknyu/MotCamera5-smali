.class public final Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u0010J\r\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0011\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\r\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0015\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "",
        "getRestorePosition",
        "()I",
        "Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyAdapter;",
        "getAdapter",
        "()Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyAdapter;",
        "Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;",
        "getToningFeature",
        "()Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;",
        "Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView$OnItemClickListener;",
        "listener",
        "",
        "setOnItemClickListener",
        "(Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView$OnItemClickListener;)V",
        "OnItemClickListener",
        "MotCamera5-v10.0.47.24_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final BEAUTY_FEATURE_DISPLAY_RANGE:Ljava/lang/Object;

.field public static final BEAUTY_FEATURE_DRAWABLE:Ljava/lang/Object;

.field public static final BEAUTY_FEATURE_TEXT:Ljava/lang/Object;

.field public static final BEAUTY_ORDER:[Ljava/lang/String;


# instance fields
.field public final faceBeautyAdapter:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyAdapter;

.field public final features:Ljava/util/ArrayList;

.field public listener:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView$OnItemClickListener;

.field public toningFeatures:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 42

    const v0, 0x7f1201e0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x7f1201dd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f1201dc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f1201e1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x7f1201db

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v5, 0x7f1201df

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v6, 0x7f08034a

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const v7, 0x7f0801b1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const v8, 0x7f0801ad

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const v9, 0x7f0801b3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const v10, 0x7f0801ab

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const v11, 0x7f0801ae

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const v12, 0x7f1201e2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const v13, 0x7f0801b4

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v14, 0x64

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v17, v0

    const-class v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;

    move-object/from16 v18, v1

    sget-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFaceBeautyMeiSheVersion()Z

    move-result v0

    const/16 v19, 0x5

    const/16 v20, 0x4

    const/16 v21, 0x2

    const/16 v22, 0x3

    const/16 v23, 0x1

    const/16 v24, 0x6

    const-string/jumbo v1, "slim-nose"

    move/from16 v26, v0

    const-string/jumbo v0, "toning-type"

    move-object/from16 v27, v2

    const-string/jumbo v2, "restore"

    move-object/from16 v28, v12

    const-string v12, "original"

    move-object/from16 v29, v3

    const-string/jumbo v3, "slim-face"

    move-object/from16 v30, v4

    const-string v4, "big-eyes"

    move-object/from16 v31, v5

    const-string/jumbo v5, "toning"

    move-object/from16 v32, v2

    const-string/jumbo v2, "smoothing"

    move-object/from16 v33, v6

    const-string v6, "fast-adjustment"

    if-eqz v26, :cond_0

    move-object/from16 v26, v7

    move-object/from16 v34, v8

    const/4 v7, 0x7

    new-array v8, v7, [Ljava/lang/String;

    aput-object v12, v8, v16

    aput-object v6, v8, v23

    aput-object v2, v8, v21

    aput-object v5, v8, v22

    aput-object v4, v8, v20

    aput-object v3, v8, v19

    aput-object v32, v8, v24

    const/16 v25, 0x7

    goto :goto_0

    :cond_0
    move-object/from16 v26, v7

    move-object/from16 v34, v8

    const/16 v7, 0x9

    new-array v8, v7, [Ljava/lang/String;

    aput-object v12, v8, v16

    aput-object v6, v8, v23

    aput-object v2, v8, v21

    aput-object v0, v8, v22

    aput-object v5, v8, v20

    aput-object v4, v8, v19

    aput-object v3, v8, v24

    const/16 v25, 0x7

    aput-object v1, v8, v25

    const/16 v7, 0x8

    aput-object v32, v8, v7

    :goto_0
    sput-object v8, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->BEAUTY_ORDER:[Ljava/lang/String;

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v7, v8}, [Ljava/lang/Integer;

    move-result-object v7

    new-instance v8, Lkotlin/Pair;

    invoke-direct {v8, v6, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v15, v14}, [Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v35, v8

    new-instance v8, Lkotlin/Pair;

    invoke-direct {v8, v2, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v15, v7}, [Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v36, v8

    new-instance v8, Lkotlin/Pair;

    invoke-direct {v8, v0, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v15, v14}, [Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v37, v8

    new-instance v8, Lkotlin/Pair;

    invoke-direct {v8, v5, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v15, v14}, [Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v38, v8

    new-instance v8, Lkotlin/Pair;

    invoke-direct {v8, v3, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v15, v14}, [Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v39, v8

    new-instance v8, Lkotlin/Pair;

    invoke-direct {v8, v4, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v15, v14}, [Ljava/lang/Integer;

    move-result-object v7

    new-instance v14, Lkotlin/Pair;

    invoke-direct {v14, v1, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v40, v8

    move-object/from16 v41, v14

    filled-new-array/range {v35 .. v41}, [Lkotlin/Pair;

    move-result-object v7

    invoke-static {v7}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v7

    sput-object v7, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->BEAUTY_FEATURE_DISPLAY_RANGE:Ljava/lang/Object;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFaceBeautyMeiSheVersion()Z

    move-result v7

    if-eqz v7, :cond_1

    new-instance v7, Lkotlin/Pair;

    invoke-direct {v7, v12, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v8, Lkotlin/Pair;

    invoke-direct {v8, v6, v10}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v10, Lkotlin/Pair;

    invoke-direct {v10, v2, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v9, Lkotlin/Pair;

    invoke-direct {v9, v5, v13}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v11, Lkotlin/Pair;

    move-object/from16 v14, v34

    invoke-direct {v11, v4, v14}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v13, Lkotlin/Pair;

    move-object/from16 v15, v26

    invoke-direct {v13, v3, v15}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v14, Lkotlin/Pair;

    move-object/from16 v19, v7

    move-object/from16 v7, v32

    move-object/from16 v15, v33

    invoke-direct {v14, v7, v15}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v20, v8

    move-object/from16 v22, v9

    move-object/from16 v21, v10

    move-object/from16 v23, v11

    move-object/from16 v24, v13

    move-object/from16 v25, v14

    filled-new-array/range {v19 .. v25}, [Lkotlin/Pair;

    move-result-object v8

    invoke-static {v8}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v8

    goto :goto_1

    :cond_1
    move-object/from16 v15, v26

    move-object/from16 v16, v32

    move-object/from16 v8, v33

    move-object/from16 v14, v34

    new-instance v7, Lkotlin/Pair;

    invoke-direct {v7, v12, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v11, Lkotlin/Pair;

    invoke-direct {v11, v6, v10}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v10, Lkotlin/Pair;

    invoke-direct {v10, v2, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v9, Lkotlin/Pair;

    invoke-direct {v9, v0, v13}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v32, v7

    new-instance v7, Lkotlin/Pair;

    invoke-direct {v7, v5, v13}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v13, Lkotlin/Pair;

    invoke-direct {v13, v3, v15}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v15, Lkotlin/Pair;

    invoke-direct {v15, v4, v14}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v14, 0x7f0801b2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v36, v7

    new-instance v7, Lkotlin/Pair;

    invoke-direct {v7, v1, v14}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v14, Lkotlin/Pair;

    move-object/from16 v39, v7

    move-object/from16 v7, v16

    invoke-direct {v14, v7, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v35, v9

    move-object/from16 v34, v10

    move-object/from16 v33, v11

    move-object/from16 v37, v13

    move-object/from16 v40, v14

    move-object/from16 v38, v15

    filled-new-array/range {v32 .. v40}, [Lkotlin/Pair;

    move-result-object v8

    invoke-static {v8}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v8

    :goto_1
    sput-object v8, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->BEAUTY_FEATURE_DRAWABLE:Ljava/lang/Object;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFaceBeautyMeiSheVersion()Z

    move-result v8

    if-eqz v8, :cond_2

    new-instance v0, Lkotlin/Pair;

    move-object/from16 v8, v31

    invoke-direct {v0, v12, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lkotlin/Pair;

    move-object/from16 v9, v30

    invoke-direct {v1, v6, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v6, Lkotlin/Pair;

    move-object/from16 v10, v29

    invoke-direct {v6, v2, v10}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lkotlin/Pair;

    move-object/from16 v11, v28

    invoke-direct {v2, v5, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, Lkotlin/Pair;

    move-object/from16 v13, v27

    invoke-direct {v5, v4, v13}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v4, Lkotlin/Pair;

    move-object/from16 v14, v18

    invoke-direct {v4, v3, v14}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Lkotlin/Pair;

    move-object/from16 v15, v17

    invoke-direct {v3, v7, v15}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v19, v0

    move-object/from16 v20, v1

    move-object/from16 v22, v2

    move-object/from16 v25, v3

    move-object/from16 v24, v4

    move-object/from16 v23, v5

    move-object/from16 v21, v6

    filled-new-array/range {v19 .. v25}, [Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object/from16 v32, v7

    move-object/from16 v15, v17

    move-object/from16 v14, v18

    move-object/from16 v13, v27

    move-object/from16 v11, v28

    move-object/from16 v10, v29

    move-object/from16 v9, v30

    move-object/from16 v8, v31

    new-instance v7, Lkotlin/Pair;

    invoke-direct {v7, v12, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v8, Lkotlin/Pair;

    invoke-direct {v8, v6, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v6, Lkotlin/Pair;

    invoke-direct {v6, v2, v10}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lkotlin/Pair;

    invoke-direct {v2, v0, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lkotlin/Pair;

    invoke-direct {v0, v5, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v5, v6

    new-instance v6, Lkotlin/Pair;

    invoke-direct {v6, v4, v13}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v4, v7

    new-instance v7, Lkotlin/Pair;

    invoke-direct {v7, v3, v14}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x7f1201de

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v9, v4

    move-object v4, v2

    move-object v2, v8

    new-instance v8, Lkotlin/Pair;

    invoke-direct {v8, v1, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v1, v9

    new-instance v9, Lkotlin/Pair;

    move-object/from16 v3, v32

    invoke-direct {v9, v3, v15}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v3, v5

    move-object v5, v0

    filled-new-array/range {v1 .. v9}, [Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    :goto_2
    sput-object v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->BEAUTY_FEATURE_TEXT:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 13

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->features:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->toningFeatures:Ljava/util/ArrayList;

    sget-object v1, Lcom/motorola/camera/R$styleable;->FaceBeautyRecyclerView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "obtainStyledAttributes(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/RotationAwareLinearLayoutManager;

    xor-int/2addr p2, v0

    invoke-direct {p1, p2}, Lcom/motorola/camera/ui/controls_2020/RotationAwareLinearLayoutManager;-><init>(I)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    sget-object p1, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    sget-object p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyHelper;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;

    sget-object v2, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyFeatureState;->DEFAULT:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyFeatureState;

    const v9, 0x7f1201df

    const/4 v10, 0x0

    const-string v1, "original"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const v8, 0x7f0801ae

    invoke-direct/range {v0 .. v10}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;-><init>(Ljava/lang/String;Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyFeatureState;IIIIIIIZ)V

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;

    const v10, 0x7f1201db

    const/4 v11, 0x0

    move-object v3, v2

    const-string v2, "fast-adjustment"

    const/4 v8, 0x0

    const v9, 0x7f0801ab

    invoke-direct/range {v1 .. v11}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;-><init>(Ljava/lang/String;Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyFeatureState;IIIIIIIZ)V

    new-instance v2, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;

    sget-object v4, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyFeatureState;->DISABLE:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyFeatureState;

    const v11, 0x7f1201e0

    const/4 v12, 0x0

    const-string/jumbo v3, "restore"

    const/4 v9, 0x0

    const v10, 0x7f08034a

    invoke-direct/range {v2 .. v12}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;-><init>(Ljava/lang/String;Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyFeatureState;IIIIIIIZ)V

    filled-new-array {v0, v1, v2}, [Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->features:Ljava/util/ArrayList;

    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyHelper;->getToningFeatures()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->toningFeatures:Ljava/util/ArrayList;

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyAdapter;

    invoke-direct {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyAdapter;->features:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->faceBeautyAdapter:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyAdapter;

    new-instance p1, Lcom/google/android/gms/tasks/zzb;

    invoke-direct {p1, p0}, Lcom/google/android/gms/tasks/zzb;-><init>(Ljava/lang/Object;)V

    iput-object p1, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyAdapter;->listener:Lcom/google/android/gms/tasks/zzb;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/SpacingItemDecorator;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070390

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-direct {p1, v0, p2}, Lcom/motorola/camera/ui/controls_2020/SpacingItemDecorator;-><init>(II)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method


# virtual methods
.method public final changeResource(Z)V
    .locals 2

    const-string v0, "data"

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->getAdapter()Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyAdapter;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->toningFeatures:Ljava/util/ArrayList;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyAdapter;->features:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iput-object p0, p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyAdapter;->features:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->getAdapter()Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyAdapter;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->features:Ljava/util/ArrayList;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyAdapter;->features:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    iput-object p0, p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyAdapter;->features:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_3
    :goto_0
    return-void
.end method

.method public final clickChild(I)V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->features:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;

    iget-object v1, v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->state:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyFeatureState;

    sget-object v2, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyFeatureState;->CLICKED:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyFeatureState;

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->state:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyFeatureState;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->notifyChild(I)V

    return-void
.end method

.method public final defaultChild(I)V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->features:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;

    iget-object v1, v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->state:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyFeatureState;

    sget-object v2, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyFeatureState;->DEFAULT:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyFeatureState;

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->state:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyFeatureState;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->notifyChild(I)V

    return-void
.end method

.method public bridge synthetic getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->getAdapter()Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyAdapter;

    move-result-object p0

    return-object p0
.end method

.method public getAdapter()Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyAdapter;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->faceBeautyAdapter:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyAdapter;

    return-object p0
.end method

.method public final getFaceBeautyToning(I)I
    .locals 3

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->toningFeatures:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    const-string v1, "get(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;

    invoke-static {p1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyHelper;->getToningKey(I)Lcom/motorola/camera/settings/SettingsManager$Key;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    :goto_1
    iget p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->dataMin:I

    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->dataMax:I

    const/4 v1, 0x1

    invoke-static {v0, p1, p0, v1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyHelper;->parseRange(IIIZ)I

    move-result p0

    return p0
.end method

.method public final getFaceBeautyUiData(I)I
    .locals 3

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->features:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "get(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;

    sget-object p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyHelper;->TAG:Ljava/lang/String;

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->key:Ljava/lang/String;

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyHelper;->BEAUTY_FEATURE_SETTING:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/settings/SettingsManager$Key;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    :goto_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFaceBeautyManualMultiSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->getUiValue(I)I

    move-result v1

    const-string v2, "fast-adjustment"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_SMART_ADJUSTMENT_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->getUiValue(I)I

    move-result p0

    return p0

    :cond_2
    return v0
.end method

.method public final getItemData(I)Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->features:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "get(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;

    return-object p0
.end method

.method public final getRestorePosition()I
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->features:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public final getToningFeature()Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->toningFeatures:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "get(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;

    return-object p0
.end method

.method public final modifyAdjustment(IZ)V
    .locals 4

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyHelper;->TAG:Ljava/lang/String;

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->CURRENT_PHYSICAL_CAMERA_ID:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, "getCurrentPhysicalCameraId(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v0, v1, p2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyHelper;->getDefaultFeaturesFromCache(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyHelper;->parseFeatures(ILjava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->features:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const-string v0, "iterator(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    const-string v2, "next(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;

    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->key:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "fast-adjustment"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FeatureData;

    iget v3, v2, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FeatureData;->value:I

    iput v3, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->value:I

    iget v3, v2, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FeatureData;->min:I

    iput v3, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->dataMin:I

    iget v2, v2, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FeatureData;->max:I

    iput v2, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->dataMax:I

    iget-boolean v2, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->canParse:Z

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->toDisplay()I

    move-result v2

    iput v2, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->default:I

    goto :goto_0

    :cond_2
    const-string/jumbo p2, "toning-type"

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string/jumbo p2, "toning"

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p2, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FeatureData;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->toningFeatures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyHelper;->getToningFeatures()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->toningFeatures:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p2, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FeatureData;->value:I

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->value:I

    iget v0, p2, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FeatureData;->min:I

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->dataMin:I

    iget p2, p2, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FeatureData;->max:I

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->dataMax:I

    iget-boolean p2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->canParse:Z

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->toDisplay()I

    move-result p2

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->default:I

    :cond_3
    invoke-static {p1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyHelper;->updateFeatureSettings(Ljava/util/HashMap;)V

    return-void
.end method

.method public final notifyChild(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->getAdapter()Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyAdapter;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method

.method public final setFaceBeautyFeatures(II)V
    .locals 2

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->features:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "get(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFaceBeautyManualMultiSupported()Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->dataMin:I

    int-to-float v0, p1

    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->dataMax:I

    sub-int/2addr v1, p1

    int-to-float p1, v1

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr p1, v1

    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->displayMin:I

    sub-int/2addr p2, v1

    int-to-float p2, p2

    mul-float/2addr p1, p2

    iget p2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->displayMax:I

    sub-int/2addr p2, v1

    int-to-float p2, p2

    div-float/2addr p1, p2

    add-float/2addr p1, v0

    invoke-static {p1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p2

    :cond_0
    sget-object p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyHelper;->TAG:Ljava/lang/String;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->key:Ljava/lang/String;

    invoke-static {p2, p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyHelper;->setFaceBeautyFeatures(ILjava/lang/String;)V

    return-void
.end method

.method public final setFaceBeautyToning(II)V
    .locals 2

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->toningFeatures:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    const-string v1, "get(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyHelper;->TAG:Ljava/lang/String;

    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->dataMin:I

    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->dataMax:I

    invoke-static {p2, v1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyHelper;->parseRange(IIIZ)I

    move-result p0

    invoke-static {p1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyHelper;->getToningKey(I)Lcom/motorola/camera/settings/SettingsManager$Key;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object p2, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_FINETUNE_TONING_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_FINETUNE_TONING_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public final setOnItemClickListener(Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView$OnItemClickListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->listener:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView$OnItemClickListener;

    return-void
.end method

.method public final updateChildrenState(I)V
    .locals 5

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->features:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    if-ne v2, p1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;

    iget-object v3, v3, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->state:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyFeatureState;

    sget-object v4, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyFeatureState;->ENABLE:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyFeatureState;

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v4, v3, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->state:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyFeatureState;

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->notifyChild(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->defaultChild(I)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->updateRestoreState()V

    return-void
.end method

.method public final updateRestoreState()V
    .locals 8

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->features:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    move v4, v2

    move v5, v3

    :goto_0
    if-ge v4, v1, :cond_3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;

    iget-object v6, v5, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->key:Ljava/lang/String;

    const-string/jumbo v7, "toning-type"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->toningFeatures:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;

    iget v6, v6, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->default:I

    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyHelper;->getFaceBeautyToningType()I

    move-result v7

    iget v5, v5, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->default:I

    if-ne v7, v5, :cond_1

    invoke-virtual {p0, v5}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->getFaceBeautyToning(I)I

    move-result v5

    if-eq v5, v6, :cond_0

    goto :goto_1

    :cond_0
    move v5, v3

    goto :goto_2

    :cond_1
    :goto_1
    move v5, v2

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v4}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->getFaceBeautyUiData(I)I

    move-result v6

    iget v5, v5, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->default:I

    if-eq v6, v5, :cond_0

    goto :goto_1

    :goto_2
    if-nez v5, :cond_3

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;

    if-eqz v5, :cond_4

    sget-object v2, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyFeatureState;->DEFAULT:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyFeatureState;

    goto :goto_3

    :cond_4
    sget-object v2, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyFeatureState;->DISABLE:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyFeatureState;

    :goto_3
    iget-object v3, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->state:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyFeatureState;

    if-ne v3, v2, :cond_5

    return-void

    :cond_5
    iput-object v2, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->state:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyFeatureState;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->notifyChild(I)V

    return-void
.end method

.method public final updateToningChildState(I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->toningFeatures:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;

    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyHelper;->getFaceBeautyToningType()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    add-int/lit8 p1, p1, -0x1

    if-ne v0, p1, :cond_2

    sget-object p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyFeatureState;->ENABLE:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyFeatureState;

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyFeatureState;->DEFAULT:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyFeatureState;

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->state:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyFeatureState;

    return-void
.end method
