.class public final Landroidx/compose/ui/spatial/ThrottledCallbacks;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public minDebounceDeadline:J

.field public final rectChangedMap:Landroidx/collection/MutableIntObjectMap;

.field public screenOffset:J

.field public windowOffset:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroidx/collection/IntObjectMapKt;->EmptyIntObjectMap:Landroidx/collection/MutableIntObjectMap;

    new-instance v0, Landroidx/collection/MutableIntObjectMap;

    invoke-direct {v0}, Landroidx/collection/MutableIntObjectMap;-><init>()V

    iput-object v0, p0, Landroidx/compose/ui/spatial/ThrottledCallbacks;->rectChangedMap:Landroidx/collection/MutableIntObjectMap;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/compose/ui/spatial/ThrottledCallbacks;->minDebounceDeadline:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/compose/ui/spatial/ThrottledCallbacks;->windowOffset:J

    iput-wide v0, p0, Landroidx/compose/ui/spatial/ThrottledCallbacks;->screenOffset:J

    return-void
.end method
