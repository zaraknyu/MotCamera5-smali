.class public abstract Lorg/apache/commons/io/file/PathUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EMPTY_LINK_OPTION_ARRAY:[Ljava/nio/file/LinkOption;

.field public static final EMPTY_OPEN_OPTION_ARRAY:[Ljava/nio/file/OpenOption;

.field public static final OPEN_OPTIONS_TRUNCATE:[Ljava/nio/file/OpenOption;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Ljava/nio/file/StandardOpenOption;->CREATE:Ljava/nio/file/StandardOpenOption;

    sget-object v1, Ljava/nio/file/StandardOpenOption;->TRUNCATE_EXISTING:Ljava/nio/file/StandardOpenOption;

    filled-new-array {v0, v1}, [Ljava/nio/file/OpenOption;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/io/file/PathUtils;->OPEN_OPTIONS_TRUNCATE:[Ljava/nio/file/OpenOption;

    sget-object v0, Ljava/nio/file/StandardOpenOption;->APPEND:Ljava/nio/file/StandardOpenOption;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/nio/file/LinkOption;

    sput-object v1, Lorg/apache/commons/io/file/PathUtils;->EMPTY_LINK_OPTION_ARRAY:[Ljava/nio/file/LinkOption;

    sget-object v1, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    new-array v0, v0, [Ljava/nio/file/OpenOption;

    sput-object v0, Lorg/apache/commons/io/file/PathUtils;->EMPTY_OPEN_OPTION_ARRAY:[Ljava/nio/file/OpenOption;

    return-void
.end method
