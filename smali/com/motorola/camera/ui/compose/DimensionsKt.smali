.class public abstract Lcom/motorola/camera/ui/compose/DimensionsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DimensionsFoldableFull:Lcom/motorola/camera/ui/compose/Dimensions;

.field public static final DimensionsFoldableSplit:Lcom/motorola/camera/ui/compose/Dimensions;

.field public static final LocalDim:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    new-instance v0, Landroidx/room/InvalidationTracker$$ExternalSyntheticLambda0;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Landroidx/room/InvalidationTracker$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v1, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-direct {v1, v0}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;-><init>(Lkotlin/jvm/functions/Function0;)V

    sput-object v1, Lcom/motorola/camera/ui/compose/DimensionsKt;->LocalDim:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    new-instance v2, Lcom/motorola/camera/ui/compose/Dimensions;

    invoke-direct {v2}, Lcom/motorola/camera/ui/compose/Dimensions;-><init>()V

    const/16 v0, 0x3c

    int-to-float v4, v0

    const/16 v0, 0x38

    int-to-float v6, v0

    const/16 v0, 0x2c

    int-to-float v7, v0

    const/16 v0, 0x30

    int-to-float v10, v0

    const/16 v0, 0x51

    int-to-float v11, v0

    const/16 v0, 0x78

    int-to-float v8, v0

    const/4 v14, -0x3

    const v15, -0x804001

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v12, -0x603

    const/16 v13, -0x41

    move v9, v4

    invoke-static/range {v2 .. v15}, Lcom/motorola/camera/ui/compose/Dimensions;->copy-0MfhYVY$default(Lcom/motorola/camera/ui/compose/Dimensions;FFFFFFFFFIIII)Lcom/motorola/camera/ui/compose/Dimensions;

    move-result-object v5

    sput-object v5, Lcom/motorola/camera/ui/compose/DimensionsKt;->DimensionsFoldableFull:Lcom/motorola/camera/ui/compose/Dimensions;

    const/16 v0, 0x18

    int-to-float v8, v0

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, -0x102

    const/16 v16, -0x1

    invoke-static/range {v5 .. v18}, Lcom/motorola/camera/ui/compose/Dimensions;->copy-0MfhYVY$default(Lcom/motorola/camera/ui/compose/Dimensions;FFFFFFFFFIIII)Lcom/motorola/camera/ui/compose/Dimensions;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/compose/DimensionsKt;->DimensionsFoldableSplit:Lcom/motorola/camera/ui/compose/Dimensions;

    return-void
.end method
