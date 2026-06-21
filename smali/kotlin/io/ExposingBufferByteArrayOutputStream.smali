.class public final Lkotlin/io/ExposingBufferByteArrayOutputStream;
.super Ljava/io/ByteArrayOutputStream;
.source "SourceFile"


# virtual methods
.method public final getBuffer()[B
    .locals 1

    iget-object p0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    const-string v0, "buf"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
