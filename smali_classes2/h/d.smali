.class public final Lh/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic k:[Lkotlin/reflect/KProperty;


# instance fields
.field public final a:Lcom/adobe/scan/sdk/ScanSession$BoundaryDetector$Callbacks;

.field public b:Lcom/adobe/scan/sdk/ScanSession$BoundaryDetector$Callbacks;

.field public final c:La/i;

.field public final d:La/f;

.field public final e:Z

.field public f:[Landroid/graphics/PointF;

.field public g:La/B;

.field public final h:Lc/B;

.field public final i:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final j:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v1, "getBoundaryHint()Lcom/adobe/scan/sdk/ScanSession$BoundaryDetector$State;"

    const/4 v2, 0x0

    const-class v3, Lh/d;

    const-string v4, "boundaryHint"

    invoke-direct {v0, v3, v4, v1, v2}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1Impl;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v0

    filled-new-array {v0}, [Lkotlin/reflect/KProperty;

    move-result-object v0

    sput-object v0, Lh/d;->k:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/adobe/scan/sdk/ScanSession$BoundaryDetector$Callbacks;

    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-direct {v0, v1, v1, v2}, Lcom/adobe/scan/sdk/ScanSession$BoundaryDetector$Callbacks;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;I)V

    iput-object v0, p0, Lh/d;->a:Lcom/adobe/scan/sdk/ScanSession$BoundaryDetector$Callbacks;

    iput-object v0, p0, Lh/d;->b:Lcom/adobe/scan/sdk/ScanSession$BoundaryDetector$Callbacks;

    new-instance v0, La/i;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, v0, La/i;->e:Ljava/nio/ByteBuffer;

    const/4 v1, 0x1

    iput-boolean v1, v0, La/i;->p:Z

    invoke-virtual {v0}, La/i;->b()V

    iput-object v0, p0, Lh/d;->c:La/i;

    new-instance v0, La/f;

    invoke-direct {v0}, La/f;-><init>()V

    iput-object v0, p0, Lh/d;->d:La/f;

    iput-boolean v1, p0, Lh/d;->e:Z

    sget-object v0, Lcom/adobe/scan/sdk/ScanSession$BoundaryDetector$State;->LookingForDocument:Lcom/adobe/scan/sdk/ScanSession$BoundaryDetector$State;

    new-instance v0, Lc/B;

    invoke-direct {v0, p0}, Lc/B;-><init>(Lh/d;)V

    iput-object v0, p0, Lh/d;->h:Lc/B;

    sget-object v0, Le/o0;->d:Le/o0;

    invoke-static {v0}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v0

    iput-object v0, p0, Lh/d;->i:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    new-instance v0, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-direct {v0, v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;-><init>(F)V

    iput-object v0, p0, Lh/d;->j:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    return-void
.end method
