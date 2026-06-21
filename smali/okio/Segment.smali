.class public final Lokio/Segment;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final data:[B

.field public limit:I

.field public next:Lokio/Segment;

.field public final owner:Z

.field public pos:I

.field public prev:Lokio/Segment;

.field public shared:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2000

    .line 2
    new-array v0, v0, [B

    iput-object v0, p0, Lokio/Segment;->data:[B

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lokio/Segment;->owner:Z

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lokio/Segment;->shared:Z

    return-void
.end method

.method public constructor <init>(II[B)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p3, p0, Lokio/Segment;->data:[B

    .line 7
    iput p1, p0, Lokio/Segment;->pos:I

    .line 8
    iput p2, p0, Lokio/Segment;->limit:I

    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lokio/Segment;->shared:Z

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lokio/Segment;->owner:Z

    return-void
.end method


# virtual methods
.method public final pop()Lokio/Segment;
    .locals 4

    iget-object v0, p0, Lokio/Segment;->next:Lokio/Segment;

    const/4 v1, 0x0

    if-eq v0, p0, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    iget-object v3, p0, Lokio/Segment;->prev:Lokio/Segment;

    iput-object v0, v3, Lokio/Segment;->next:Lokio/Segment;

    iget-object v0, p0, Lokio/Segment;->next:Lokio/Segment;

    iput-object v3, v0, Lokio/Segment;->prev:Lokio/Segment;

    iput-object v1, p0, Lokio/Segment;->next:Lokio/Segment;

    iput-object v1, p0, Lokio/Segment;->prev:Lokio/Segment;

    return-object v2
.end method

.method public final push(Lokio/Segment;)V
    .locals 1

    iput-object p0, p1, Lokio/Segment;->prev:Lokio/Segment;

    iget-object v0, p0, Lokio/Segment;->next:Lokio/Segment;

    iput-object v0, p1, Lokio/Segment;->next:Lokio/Segment;

    iget-object v0, p0, Lokio/Segment;->next:Lokio/Segment;

    iput-object p1, v0, Lokio/Segment;->prev:Lokio/Segment;

    iput-object p1, p0, Lokio/Segment;->next:Lokio/Segment;

    return-void
.end method

.method public final sharedCopy()Lokio/Segment;
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lokio/Segment;->shared:Z

    new-instance v0, Lokio/Segment;

    iget v1, p0, Lokio/Segment;->pos:I

    iget v2, p0, Lokio/Segment;->limit:I

    iget-object p0, p0, Lokio/Segment;->data:[B

    invoke-direct {v0, v1, v2, p0}, Lokio/Segment;-><init>(II[B)V

    return-object v0
.end method

.method public final writeTo(Lokio/Segment;I)V
    .locals 5

    iget-boolean v0, p1, Lokio/Segment;->owner:Z

    iget-object v1, p1, Lokio/Segment;->data:[B

    if-eqz v0, :cond_3

    iget v0, p1, Lokio/Segment;->limit:I

    add-int v2, v0, p2

    const/16 v3, 0x2000

    if-le v2, v3, :cond_2

    iget-boolean v4, p1, Lokio/Segment;->shared:Z

    if-nez v4, :cond_1

    iget v4, p1, Lokio/Segment;->pos:I

    sub-int/2addr v2, v4

    if-gt v2, v3, :cond_0

    sub-int/2addr v0, v4

    const/4 v2, 0x0

    invoke-static {v1, v4, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Lokio/Segment;->limit:I

    iget v3, p1, Lokio/Segment;->pos:I

    sub-int/2addr v0, v3

    iput v0, p1, Lokio/Segment;->limit:I

    iput v2, p1, Lokio/Segment;->pos:I

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_2
    :goto_0
    iget v0, p0, Lokio/Segment;->pos:I

    iget v2, p1, Lokio/Segment;->limit:I

    iget-object v3, p0, Lokio/Segment;->data:[B

    invoke-static {v3, v0, v1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Lokio/Segment;->limit:I

    add-int/2addr v0, p2

    iput v0, p1, Lokio/Segment;->limit:I

    iget p1, p0, Lokio/Segment;->pos:I

    add-int/2addr p1, p2

    iput p1, p0, Lokio/Segment;->pos:I

    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method
