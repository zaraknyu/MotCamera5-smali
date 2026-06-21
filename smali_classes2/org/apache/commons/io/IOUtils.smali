.class public abstract Lorg/apache/commons/io/IOUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    sget-object v0, Lorg/apache/commons/io/StandardLineSeparator;->LF:Lorg/apache/commons/io/StandardLineSeparator;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lorg/apache/commons/io/StandardLineSeparator;->CRLF:Lorg/apache/commons/io/StandardLineSeparator;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lorg/apache/commons/io/IOUtils$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/io/IOUtils$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    new-instance v0, Lorg/apache/commons/io/IOUtils$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/apache/commons/io/IOUtils$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    .locals 5

    const/16 v0, 0x2000

    new-array v0, v0, [B

    const-string v1, "outputStream"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-wide/16 v1, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v4, v3, :cond_0

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v3, v3

    add-long/2addr v1, v3

    goto :goto_0

    :cond_0
    const-wide/32 p0, 0x7fffffff

    cmp-long p0, v1, p0

    if-lez p0, :cond_1

    return v4

    :cond_1
    long-to-int p0, v1

    return p0
.end method
