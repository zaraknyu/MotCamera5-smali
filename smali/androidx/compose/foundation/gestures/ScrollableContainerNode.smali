.class public final Landroidx/compose/foundation/gestures/ScrollableContainerNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/node/TraversableNode;


# static fields
.field public static final TraverseKey:Lcom/google/mlkit/common/internal/zzb;


# instance fields
.field public enabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/mlkit/common/internal/zzb;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/compose/foundation/gestures/ScrollableContainerNode;->TraverseKey:Lcom/google/mlkit/common/internal/zzb;

    return-void
.end method


# virtual methods
.method public final getTraverseKey()Ljava/lang/Object;
    .locals 0

    sget-object p0, Landroidx/compose/foundation/gestures/ScrollableContainerNode;->TraverseKey:Lcom/google/mlkit/common/internal/zzb;

    return-object p0
.end method
