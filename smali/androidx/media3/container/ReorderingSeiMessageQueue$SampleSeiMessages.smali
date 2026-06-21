.class public final Landroidx/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final nalBuffers:Ljava/util/ArrayList;

.field public presentationTimeUs:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;->presentationTimeUs:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;->nalBuffers:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Landroidx/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;

    iget-wide v0, p0, Landroidx/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;->presentationTimeUs:J

    iget-wide p0, p1, Landroidx/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;->presentationTimeUs:J

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method
