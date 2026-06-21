.class public final Lcom/google/zxing/client/result/ISBNParsedResult;
.super Landroidx/media3/decoder/Buffer;
.source "SourceFile"


# instance fields
.field public final isbn:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0xb

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Landroidx/media3/decoder/Buffer;-><init>(II)V

    iput-object p1, p0, Lcom/google/zxing/client/result/ISBNParsedResult;->isbn:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getDisplayResult()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/zxing/client/result/ISBNParsedResult;->isbn:Ljava/lang/String;

    return-object p0
.end method
