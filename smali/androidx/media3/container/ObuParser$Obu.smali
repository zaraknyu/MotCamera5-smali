.class public final Landroidx/media3/container/ObuParser$Obu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final payload:Ljava/nio/ByteBuffer;

.field public final type:I


# direct methods
.method public constructor <init>(ILjava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/container/ObuParser$Obu;->type:I

    iput-object p2, p0, Landroidx/media3/container/ObuParser$Obu;->payload:Ljava/nio/ByteBuffer;

    return-void
.end method
