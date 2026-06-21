.class public Landroidx/media3/common/util/GlProgram;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/ts/SectionPayloadReader;
.implements Lkotlin/reflect/jvm/internal/impl/load/java/lazy/TypeParameterResolver;


# instance fields
.field public final synthetic $r8$classId:I

.field public attributeByName:Ljava/lang/Object;

.field public final attributes:Ljava/lang/Object;

.field public programId:I

.field public uniformByName:Ljava/lang/Object;

.field public uniforms:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/MpegAudioUtil$Header;Landroidx/room/ObservedTableVersions;[B[Landroidx/media3/exoplayer/WakeLockManager;I)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/media3/common/util/GlProgram;->$r8$classId:I

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Landroidx/media3/common/util/GlProgram;->attributes:Ljava/lang/Object;

    .line 80
    iput-object p2, p0, Landroidx/media3/common/util/GlProgram;->uniforms:Ljava/lang/Object;

    .line 81
    iput-object p3, p0, Landroidx/media3/common/util/GlProgram;->attributeByName:Ljava/lang/Object;

    .line 82
    iput-object p4, p0, Landroidx/media3/common/util/GlProgram;->uniformByName:Ljava/lang/Object;

    .line 83
    iput p5, p0, Landroidx/media3/common/util/GlProgram;->programId:I

    return-void
.end method

.method public constructor <init>(Landroidx/media3/extractor/text/pgs/PgsParser;Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptorNonRoot;Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaTypeParameterListOwner;I)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Landroidx/media3/common/util/GlProgram;->$r8$classId:I

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "typeParameterOwner"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/media3/common/util/GlProgram;->attributes:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Landroidx/media3/common/util/GlProgram;->uniforms:Ljava/lang/Object;

    .line 4
    iput p4, p0, Landroidx/media3/common/util/GlProgram;->programId:I

    .line 5
    invoke-interface {p3}, Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaTypeParameterListOwner;->getTypeParameters()Ljava/util/ArrayList;

    move-result-object p1

    .line 6
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 7
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p3, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    add-int/lit8 p4, p3, 0x1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 8
    invoke-interface {p2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move p3, p4

    goto :goto_0

    .line 9
    :cond_0
    iput-object p2, p0, Landroidx/media3/common/util/GlProgram;->attributeByName:Ljava/lang/Object;

    .line 10
    iget-object p1, p0, Landroidx/media3/common/util/GlProgram;->attributes:Ljava/lang/Object;

    check-cast p1, Landroidx/media3/extractor/text/pgs/PgsParser;

    .line 11
    iget-object p1, p1, Landroidx/media3/extractor/text/pgs/PgsParser;->buffer:Ljava/lang/Object;

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;

    .line 12
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->storageManager:Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;

    .line 13
    new-instance p2, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;

    const/16 p3, 0xb

    invoke-direct {p2, p3, p0}, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;-><init>(ILjava/lang/Object;)V

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;

    invoke-virtual {p1, p2}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;->createMemoizedFunctionWithNullableValues(Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunction;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/common/util/GlProgram;->uniformByName:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/media3/extractor/ts/TsExtractor;I)V
    .locals 2

    const/4 v0, 0x2

    iput v0, p0, Landroidx/media3/common/util/GlProgram;->$r8$classId:I

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/util/GlProgram;->uniformByName:Ljava/lang/Object;

    .line 94
    new-instance p1, Landroidx/media3/extractor/VorbisBitArray;

    const/4 v0, 0x5

    new-array v1, v0, [B

    .line 95
    invoke-direct {p1, v0, v1}, Landroidx/media3/extractor/VorbisBitArray;-><init>(I[B)V

    .line 96
    iput-object p1, p0, Landroidx/media3/common/util/GlProgram;->attributes:Ljava/lang/Object;

    .line 97
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/util/GlProgram;->uniforms:Ljava/lang/Object;

    .line 98
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/util/GlProgram;->attributeByName:Ljava/lang/Object;

    .line 99
    iput p2, p0, Landroidx/media3/common/util/GlProgram;->programId:I

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$7;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Landroidx/media3/common/util/GlProgram;->$r8$classId:I

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Landroidx/media3/common/util/GlProgram;->programId:I

    .line 16
    iput-object p1, p0, Landroidx/media3/common/util/GlProgram;->attributes:Ljava/lang/Object;

    .line 17
    new-instance p1, Landroidx/recyclerview/widget/ChildHelper$Bucket;

    invoke-direct {p1}, Landroidx/recyclerview/widget/ChildHelper$Bucket;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/util/GlProgram;->uniforms:Ljava/lang/Object;

    .line 18
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/util/GlProgram;->attributeByName:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;[Ljava/lang/Class;)V
    .locals 3

    const/4 v0, 0x4

    iput v0, p0, Landroidx/media3/common/util/GlProgram;->$r8$classId:I

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/media3/common/util/GlProgram;->attributes:Ljava/lang/Object;

    .line 86
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Landroidx/media3/common/util/GlProgram;->uniforms:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 87
    iput v1, p0, Landroidx/media3/common/util/GlProgram;->programId:I

    .line 88
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Landroidx/media3/common/util/GlProgram;->uniformByName:Ljava/lang/Object;

    .line 89
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 90
    array-length p1, p2

    :goto_0
    if-ge v1, p1, :cond_0

    aget-object v0, p2, v1

    .line 91
    const-string v2, "Null interface"

    invoke-static {v0, v2}, Lcom/google/firebase/components/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 92
    :cond_0
    iget-object p0, p0, Landroidx/media3/common/util/GlProgram;->attributes:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashSet;

    invoke-static {p0, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x6

    iput v0, p0, Landroidx/media3/common/util/GlProgram;->$r8$classId:I

    const-string/jumbo v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Lcom/google/common/base/Splitter;

    const/16 v1, 0x12

    const/4 v2, 0x0

    .line 71
    invoke-direct {v0, v2, v1}, Lcom/google/common/base/Splitter;-><init>(CI)V

    const/16 v1, 0x8

    .line 72
    new-array v2, v1, [Ljava/lang/Object;

    iput-object v2, v0, Lcom/google/common/base/Splitter;->trimmer:Ljava/lang/Object;

    .line 73
    new-array v2, v1, [I

    const/4 v3, 0x0

    :goto_0
    const/4 v4, -0x1

    if-ge v3, v1, :cond_0

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iput-object v2, v0, Lcom/google/common/base/Splitter;->strategy:Ljava/lang/Object;

    .line 74
    iput v4, v0, Lcom/google/common/base/Splitter;->limit:I

    .line 75
    iput-object v0, p0, Landroidx/media3/common/util/GlProgram;->attributes:Ljava/lang/Object;

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroidx/media3/common/util/GlProgram;->attributeByName:Ljava/lang/Object;

    .line 77
    iput-object p1, p0, Landroidx/media3/common/util/GlProgram;->uniformByName:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/common/util/GlProgram;->$r8$classId:I

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v0

    iput v0, p0, Landroidx/media3/common/util/GlProgram;->programId:I

    .line 21
    invoke-static {}, Landroidx/media3/common/util/Log;->checkGlError()V

    const v1, 0x8b31

    .line 22
    invoke-static {v0, v1, p1}, Landroidx/media3/common/util/GlProgram;->addShader(IILjava/lang/String;)V

    const p1, 0x8b30

    .line 23
    invoke-static {v0, p1, p2}, Landroidx/media3/common/util/GlProgram;->addShader(IILjava/lang/String;)V

    .line 24
    invoke-static {v0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const/4 p1, 0x0

    .line 25
    filled-new-array {p1}, [I

    move-result-object p2

    const v1, 0x8b82

    .line 26
    invoke-static {v0, v1, p2, p1}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 27
    aget p2, p2, p1

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, p1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to link shader program: \n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-static {v0}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 29
    invoke-static {v2, p2}, Landroidx/media3/common/util/Log;->checkGlException(Ljava/lang/String;Z)V

    .line 30
    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 31
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Landroidx/media3/common/util/GlProgram;->attributeByName:Ljava/lang/Object;

    .line 32
    new-array p2, v1, [I

    const v2, 0x8b89

    .line 33
    invoke-static {v0, v2, p2, p1}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 34
    aget v0, p2, p1

    new-array v0, v0, [Lcom/google/android/gms/dynamite/zzf;

    iput-object v0, p0, Landroidx/media3/common/util/GlProgram;->attributes:Ljava/lang/Object;

    move v3, p1

    .line 35
    :goto_1
    aget v0, p2, p1

    if-ge v3, v0, :cond_3

    .line 36
    iget v2, p0, Landroidx/media3/common/util/GlProgram;->programId:I

    .line 37
    new-array v0, v1, [I

    const v4, 0x8b8a

    .line 38
    invoke-static {v2, v4, v0, p1}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 39
    aget v4, v0, p1

    new-array v11, v4, [B

    .line 40
    new-array v5, v1, [I

    new-array v7, v1, [I

    new-array v9, v1, [I

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v12}, Landroid/opengl/GLES20;->glGetActiveAttrib(III[II[II[II[BI)V

    .line 41
    new-instance v0, Ljava/lang/String;

    move v5, p1

    :goto_2
    if-ge v5, v4, :cond_2

    .line 42
    aget-byte v6, v11, v5

    if-nez v6, :cond_1

    move v4, v5

    goto :goto_3

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 43
    :cond_2
    :goto_3
    invoke-direct {v0, v11, p1, v4}, Ljava/lang/String;-><init>([BII)V

    .line 44
    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    .line 45
    new-instance v2, Lcom/google/android/gms/dynamite/zzf;

    .line 46
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 47
    iget-object v4, p0, Landroidx/media3/common/util/GlProgram;->attributes:Ljava/lang/Object;

    check-cast v4, [Lcom/google/android/gms/dynamite/zzf;

    aput-object v2, v4, v3

    .line 48
    iget-object v4, p0, Landroidx/media3/common/util/GlProgram;->attributeByName:Ljava/lang/Object;

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 49
    :cond_3
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Landroidx/media3/common/util/GlProgram;->uniformByName:Ljava/lang/Object;

    .line 50
    new-array p2, v1, [I

    .line 51
    iget v0, p0, Landroidx/media3/common/util/GlProgram;->programId:I

    const v2, 0x8b86

    invoke-static {v0, v2, p2, p1}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 52
    aget v0, p2, p1

    new-array v0, v0, [Landroidx/collection/internal/Lock;

    iput-object v0, p0, Landroidx/media3/common/util/GlProgram;->uniforms:Ljava/lang/Object;

    move v3, p1

    .line 53
    :goto_4
    aget v0, p2, p1

    if-ge v3, v0, :cond_6

    .line 54
    iget v2, p0, Landroidx/media3/common/util/GlProgram;->programId:I

    .line 55
    new-array v0, v1, [I

    const v4, 0x8b87

    .line 56
    invoke-static {v2, v4, v0, p1}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 57
    new-array v9, v1, [I

    .line 58
    aget v4, v0, p1

    new-array v11, v4, [B

    .line 59
    new-array v5, v1, [I

    new-array v7, v1, [I

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v12}, Landroid/opengl/GLES20;->glGetActiveUniform(III[II[II[II[BI)V

    .line 60
    new-instance v0, Ljava/lang/String;

    move v5, p1

    :goto_5
    if-ge v5, v4, :cond_5

    .line 61
    aget-byte v6, v11, v5

    if-nez v6, :cond_4

    move v4, v5

    goto :goto_6

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 62
    :cond_5
    :goto_6
    invoke-direct {v0, v11, p1, v4}, Ljava/lang/String;-><init>([BII)V

    .line 63
    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 64
    new-instance v2, Landroidx/collection/internal/Lock;

    const/4 v4, 0x5

    .line 65
    invoke-direct {v2, v4}, Landroidx/collection/internal/Lock;-><init>(I)V

    .line 66
    iget-object v4, p0, Landroidx/media3/common/util/GlProgram;->uniforms:Ljava/lang/Object;

    check-cast v4, [Landroidx/collection/internal/Lock;

    aput-object v2, v4, v3

    .line 67
    iget-object v4, p0, Landroidx/media3/common/util/GlProgram;->uniformByName:Ljava/lang/Object;

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 68
    :cond_6
    invoke-static {}, Landroidx/media3/common/util/Log;->checkGlError()V

    return-void
.end method

.method public static addShader(IILjava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result p1

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    invoke-static {p1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 v0, 0x0

    filled-new-array {v0}, [I

    move-result-object v1

    const v2, 0x8b81

    invoke-static {p1, v2, v1, v0}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    aget v1, v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", source: \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v0}, Landroidx/media3/common/util/Log;->checkGlException(Ljava/lang/String;Z)V

    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    invoke-static {p1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    invoke-static {}, Landroidx/media3/common/util/Log;->checkGlError()V

    return-void
.end method

.method public static synthetic fail$default(Landroidx/media3/common/util/GlProgram;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 1

    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_0

    iget p2, p0, Landroidx/media3/common/util/GlProgram;->programId:I

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const-string p3, ""

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/common/util/GlProgram;->fail(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public add(Lcom/google/firebase/components/Dependency;)V
    .locals 2

    iget-object v0, p1, Lcom/google/firebase/components/Dependency;->anInterface:Ljava/lang/Class;

    iget-object v1, p0, Landroidx/media3/common/util/GlProgram;->attributes:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Landroidx/media3/common/util/GlProgram;->uniforms:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Components are not allowed to depend on interfaces they themselves provide."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addView(Landroid/view/View;IZ)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/common/util/GlProgram;->attributes:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$7;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$7;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    if-gez p2, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Landroidx/media3/common/util/GlProgram;->getOffset(I)I

    move-result p2

    :goto_0
    iget-object v1, p0, Landroidx/media3/common/util/GlProgram;->uniforms:Ljava/lang/Object;

    check-cast v1, Landroidx/recyclerview/widget/ChildHelper$Bucket;

    invoke-virtual {v1, p2, p3}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->insert(IZ)V

    if-eqz p3, :cond_1

    invoke-virtual {p0, p1}, Landroidx/media3/common/util/GlProgram;->hideViewInternal(Landroid/view/View;)V

    :cond_1
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p0

    iget-object p2, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz p2, :cond_2

    if-eqz p0, :cond_2

    invoke-virtual {p2, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_2
    iget-object p0, v0, Landroidx/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/ArrayList;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_1
    if-ltz p0, :cond_4

    iget-object p2, v0, Landroidx/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/ArrayList;

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/viewpager2/widget/ViewPager2$4;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget p3, p2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v1, -0x1

    if-ne p3, v1, :cond_3

    iget p2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-ne p2, v1, :cond_3

    add-int/lit8 p0, p0, -0x1

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Pages must fill the whole ViewPager2 (use match_parent)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    return-void
.end method

.method public appendHex(Ljava/lang/CharSequence;I)I
    .locals 4

    add-int/lit8 v0, p2, 0x4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lt v0, v1, :cond_1

    iput p2, p0, Landroidx/media3/common/util/GlProgram;->programId:I

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-ge v0, p2, :cond_0

    iget p2, p0, Landroidx/media3/common/util/GlProgram;->programId:I

    invoke-virtual {p0, p1, p2}, Landroidx/media3/common/util/GlProgram;->appendHex(Ljava/lang/CharSequence;I)I

    move-result p0

    return p0

    :cond_0
    const/4 p1, 0x0

    const/4 p2, 0x6

    const-string v0, "Unexpected EOF during unicode escape"

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1, p2}, Landroidx/media3/common/util/GlProgram;->fail$default(Landroidx/media3/common/util/GlProgram;Ljava/lang/String;ILjava/lang/String;I)V

    throw v1

    :cond_1
    iget-object v1, p0, Landroidx/media3/common/util/GlProgram;->attributeByName:Ljava/lang/Object;

    check-cast v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Landroidx/media3/common/util/GlProgram;->fromHexChar(Ljava/lang/CharSequence;I)I

    move-result v2

    shl-int/lit8 v2, v2, 0xc

    add-int/lit8 v3, p2, 0x1

    invoke-virtual {p0, p1, v3}, Landroidx/media3/common/util/GlProgram;->fromHexChar(Ljava/lang/CharSequence;I)I

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x2

    invoke-virtual {p0, p1, v3}, Landroidx/media3/common/util/GlProgram;->fromHexChar(Ljava/lang/CharSequence;I)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    add-int/lit8 p2, p2, 0x3

    invoke-virtual {p0, p1, p2}, Landroidx/media3/common/util/GlProgram;->fromHexChar(Ljava/lang/CharSequence;I)I

    move-result p0

    add-int/2addr p0, v2

    int-to-char p0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v0
.end method

.method public attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/common/util/GlProgram;->attributes:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$7;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$7;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    if-gez p2, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Landroidx/media3/common/util/GlProgram;->getOffset(I)I

    move-result p2

    :goto_0
    iget-object v1, p0, Landroidx/media3/common/util/GlProgram;->uniforms:Ljava/lang/Object;

    check-cast v1, Landroidx/recyclerview/widget/ChildHelper$Bucket;

    invoke-virtual {v1, p2, p4}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->insert(IZ)V

    if-eqz p4, :cond_1

    invoke-virtual {p0, p1}, Landroidx/media3/common/util/GlProgram;->hideViewInternal(Landroid/view/View;)V

    :cond_1
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result p4

    if-nez p4, :cond_3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result p4

    if-eqz p4, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Called attach on a child which is not detached: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v0, p2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    sget-boolean p4, Landroidx/recyclerview/widget/RecyclerView;->sVerboseLoggingEnabled:Z

    if-eqz p4, :cond_4

    new-instance p4, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "reAttach "

    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v1, "RecyclerView"

    invoke-static {v1, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->clearTmpDetachFlag()V

    goto :goto_2

    :cond_5
    sget-boolean p0, Landroidx/recyclerview/widget/RecyclerView;->sDebugAssertionsEnabled:Z

    if-nez p0, :cond_6

    :goto_2
    invoke-static {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->access$000(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "No ViewHolder found for child: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", index: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {v0, p3}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public build()Lcom/google/firebase/components/Component;
    .locals 7

    iget-object v0, p0, Landroidx/media3/common/util/GlProgram;->attributeByName:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/components/ComponentFactory;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    new-instance v1, Lcom/google/firebase/components/Component;

    new-instance v2, Ljava/util/HashSet;

    iget-object v0, p0, Landroidx/media3/common/util/GlProgram;->attributes:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashSet;

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v3, Ljava/util/HashSet;

    iget-object v0, p0, Landroidx/media3/common/util/GlProgram;->uniforms:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashSet;

    invoke-direct {v3, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget v4, p0, Landroidx/media3/common/util/GlProgram;->programId:I

    iget-object v0, p0, Landroidx/media3/common/util/GlProgram;->attributeByName:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lcom/google/firebase/components/ComponentFactory;

    iget-object p0, p0, Landroidx/media3/common/util/GlProgram;->uniformByName:Ljava/lang/Object;

    move-object v6, p0

    check-cast v6, Ljava/util/HashSet;

    invoke-direct/range {v1 .. v6}, Lcom/google/firebase/components/Component;-><init>(Ljava/util/HashSet;Ljava/util/HashSet;ILcom/google/firebase/components/ComponentFactory;Ljava/util/HashSet;)V

    return-object v1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Missing required property: factory."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public canConsumeValue()Z
    .locals 5

    iget v0, p0, Landroidx/media3/common/util/GlProgram;->programId:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Landroidx/media3/common/util/GlProgram;->uniformByName:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_3

    const/16 v4, 0xd

    if-eq v3, v4, :cond_3

    const/16 v4, 0x9

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    iput v0, p0, Landroidx/media3/common/util/GlProgram;->programId:I

    const/16 p0, 0x2c

    if-eq v3, p0, :cond_2

    const/16 p0, 0x3a

    if-eq v3, p0, :cond_2

    const/16 p0, 0x5d

    if-eq v3, p0, :cond_2

    const/16 p0, 0x7d

    if-eq v3, p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v2

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    iput v0, p0, Landroidx/media3/common/util/GlProgram;->programId:I

    return v2
.end method

.method public consume(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroidx/media3/common/util/GlProgram;->uniforms:Ljava/lang/Object;

    check-cast v2, Landroid/util/SparseArray;

    iget-object v3, v0, Landroidx/media3/common/util/GlProgram;->attributeByName:Ljava/lang/Object;

    check-cast v3, Landroid/util/SparseIntArray;

    iget-object v4, v0, Landroidx/media3/common/util/GlProgram;->attributes:Ljava/lang/Object;

    check-cast v4, Landroidx/media3/extractor/VorbisBitArray;

    iget-object v5, v0, Landroidx/media3/common/util/GlProgram;->uniformByName:Ljava/lang/Object;

    check-cast v5, Landroidx/media3/extractor/ts/TsExtractor;

    iget-object v6, v5, Landroidx/media3/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    iget-object v7, v5, Landroidx/media3/extractor/ts/TsExtractor;->trackIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_0

    goto :goto_0

    :cond_0
    iget-object v8, v5, Landroidx/media3/extractor/ts/TsExtractor;->timestampAdjusters:Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/media3/common/util/TimestampAdjuster;

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v11

    and-int/lit16 v11, v11, 0x80

    if-nez v11, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 v11, 0x1

    invoke-virtual {v1, v11}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v12

    const/4 v13, 0x3

    invoke-virtual {v1, v13}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    iget-object v14, v4, Landroidx/media3/extractor/VorbisBitArray;->data:[B

    invoke-virtual {v1, v10, v9, v14}, Landroidx/media3/common/util/ParsableByteArray;->readBytes(II[B)V

    invoke-virtual {v4, v10}, Landroidx/media3/extractor/VorbisBitArray;->setPosition(I)V

    invoke-virtual {v4, v13}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    const/16 v14, 0xd

    invoke-virtual {v4, v14}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v15

    iput v15, v5, Landroidx/media3/extractor/ts/TsExtractor;->pcrPid:I

    iget-object v15, v4, Landroidx/media3/extractor/VorbisBitArray;->data:[B

    invoke-virtual {v1, v10, v9, v15}, Landroidx/media3/common/util/ParsableByteArray;->readBytes(II[B)V

    invoke-virtual {v4, v10}, Landroidx/media3/extractor/VorbisBitArray;->setPosition(I)V

    const/4 v15, 0x4

    invoke-virtual {v4, v15}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    const/16 v11, 0xc

    invoke-virtual {v4, v11}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v9

    invoke-virtual {v1, v9}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->clear()V

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v9

    :goto_1
    if-lez v9, :cond_21

    iget-object v11, v4, Landroidx/media3/extractor/VorbisBitArray;->data:[B

    const/4 v15, 0x5

    invoke-virtual {v1, v10, v15, v11}, Landroidx/media3/common/util/ParsableByteArray;->readBytes(II[B)V

    invoke-virtual {v4, v10}, Landroidx/media3/extractor/VorbisBitArray;->setPosition(I)V

    const/16 v11, 0x8

    invoke-virtual {v4, v11}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v11

    invoke-virtual {v4, v13}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    invoke-virtual {v4, v14}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v10

    const/4 v14, 0x4

    invoke-virtual {v4, v14}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    const/16 v14, 0xc

    invoke-virtual {v4, v14}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v16

    iget v14, v1, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int v13, v14, v16

    const/16 v17, 0x0

    const/16 v18, -0x1

    move-object/from16 v21, v17

    move-object/from16 v23, v21

    move/from16 v20, v18

    const/16 v22, 0x0

    :goto_2
    iget v15, v1, Landroidx/media3/common/util/ParsableByteArray;->position:I

    move-object/from16 v25, v4

    if-ge v15, v13, :cond_2

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v15

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v19

    iget v4, v1, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int v4, v4, v19

    if-le v4, v13, :cond_3

    :cond_2
    move-object/from16 v31, v6

    move/from16 v30, v9

    goto/16 :goto_7

    :cond_3
    const/16 v19, 0x87

    const/16 v24, 0x81

    move/from16 v30, v9

    const/4 v9, 0x5

    if-ne v15, v9, :cond_8

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v26

    const-wide/32 v28, 0x41432d33

    cmp-long v9, v26, v28

    if-nez v9, :cond_4

    move/from16 v20, v24

    goto :goto_4

    :cond_4
    const-wide/32 v28, 0x45414333

    cmp-long v9, v26, v28

    if-nez v9, :cond_5

    move/from16 v20, v19

    goto :goto_4

    :cond_5
    const-wide/32 v28, 0x41432d34

    cmp-long v9, v26, v28

    if-nez v9, :cond_6

    :goto_3
    const/16 v20, 0xac

    goto :goto_4

    :cond_6
    const-wide/32 v28, 0x48455643

    cmp-long v9, v26, v28

    if-nez v9, :cond_7

    const/16 v20, 0x24

    :cond_7
    :goto_4
    move/from16 v19, v4

    move-object/from16 v31, v6

    goto/16 :goto_6

    :cond_8
    const/16 v9, 0x6a

    if-ne v15, v9, :cond_9

    move/from16 v19, v4

    move-object/from16 v31, v6

    move/from16 v20, v24

    goto/16 :goto_6

    :cond_9
    const/16 v9, 0x7a

    if-ne v15, v9, :cond_a

    move-object/from16 v31, v6

    move/from16 v20, v19

    move/from16 v19, v4

    goto/16 :goto_6

    :cond_a
    const/16 v9, 0x7f

    if-ne v15, v9, :cond_d

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v9

    const/16 v15, 0x15

    if-ne v9, v15, :cond_b

    goto :goto_3

    :cond_b
    const/16 v15, 0xe

    if-ne v9, v15, :cond_c

    const/16 v20, 0x88

    goto :goto_4

    :cond_c
    const/16 v15, 0x21

    if-ne v9, v15, :cond_7

    const/16 v20, 0x8b

    goto :goto_4

    :cond_d
    const/16 v9, 0x7b

    if-ne v15, v9, :cond_e

    move/from16 v19, v4

    move-object/from16 v31, v6

    const/16 v20, 0x8a

    goto :goto_6

    :cond_e
    const/16 v9, 0xa

    if-ne v15, v9, :cond_f

    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const/4 v15, 0x3

    invoke-virtual {v1, v15, v9}, Landroidx/media3/common/util/ParsableByteArray;->readString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v9

    move/from16 v19, v4

    move-object/from16 v31, v6

    move/from16 v22, v9

    goto :goto_6

    :cond_f
    const/4 v0, 0x3

    const/16 v9, 0x59

    if-ne v15, v9, :cond_11

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    :goto_5
    iget v15, v1, Landroidx/media3/common/util/ParsableByteArray;->position:I

    if-ge v15, v4, :cond_10

    sget-object v15, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v0, v15}, Landroidx/media3/common/util/ParsableByteArray;->readString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move/from16 v19, v4

    const/4 v15, 0x4

    new-array v4, v15, [B

    move-object/from16 v31, v6

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v15, v4}, Landroidx/media3/common/util/ParsableByteArray;->readBytes(II[B)V

    new-instance v6, Landroidx/media3/extractor/ts/TsPayloadReader$DvbSubtitleInfo;

    invoke-direct {v6, v0, v4}, Landroidx/media3/extractor/ts/TsPayloadReader$DvbSubtitleInfo;-><init>(Ljava/lang/String;[B)V

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v4, v19

    move-object/from16 v6, v31

    const/4 v0, 0x3

    goto :goto_5

    :cond_10
    move/from16 v19, v4

    move-object/from16 v31, v6

    move-object/from16 v23, v9

    const/16 v20, 0x59

    goto :goto_6

    :cond_11
    move/from16 v19, v4

    move-object/from16 v31, v6

    const/16 v0, 0x6f

    if-ne v15, v0, :cond_12

    const/16 v20, 0x101

    :cond_12
    :goto_6
    iget v0, v1, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int v4, v19, v0

    invoke-virtual {v1, v4}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    move-object/from16 v0, p0

    move-object/from16 v4, v25

    move/from16 v9, v30

    move-object/from16 v6, v31

    goto/16 :goto_2

    :goto_7
    invoke-virtual {v1, v13}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    new-instance v19, Lcom/google/common/base/Splitter;

    iget-object v0, v1, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-static {v0, v14, v13}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v24

    invoke-direct/range {v19 .. v24}, Lcom/google/common/base/Splitter;-><init>(ILjava/lang/String;ILjava/util/ArrayList;[B)V

    move-object/from16 v4, v19

    move-object/from16 v0, v21

    const/4 v6, 0x6

    if-eq v11, v6, :cond_13

    const/4 v9, 0x5

    if-ne v11, v9, :cond_14

    :cond_13
    move/from16 v11, v20

    :cond_14
    add-int/lit8 v16, v16, 0x5

    sub-int v9, v30, v16

    invoke-virtual {v7, v10}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    if-eqz v6, :cond_15

    const/4 v15, 0x3

    goto/16 :goto_a

    :cond_15
    iget-object v6, v5, Landroidx/media3/extractor/ts/TsExtractor;->payloadReaderFactory:Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;

    const-string/jumbo v13, "video/mp2t"

    const/4 v14, 0x2

    const/4 v15, 0x3

    if-eq v11, v14, :cond_20

    if-eq v11, v15, :cond_1f

    const/4 v14, 0x4

    if-eq v11, v14, :cond_1f

    const/16 v14, 0x15

    if-eq v11, v14, :cond_1e

    const/16 v14, 0x1b

    if-eq v11, v14, :cond_1d

    const/16 v14, 0x24

    if-eq v11, v14, :cond_1c

    const/16 v14, 0x2d

    if-eq v11, v14, :cond_1b

    const/16 v14, 0x59

    if-eq v11, v14, :cond_1a

    const/16 v14, 0xac

    if-eq v11, v14, :cond_19

    const/16 v14, 0x101

    if-eq v11, v14, :cond_18

    const/16 v14, 0x8a

    if-eq v11, v14, :cond_17

    const/16 v14, 0x8b

    if-eq v11, v14, :cond_16

    packed-switch v11, :pswitch_data_0

    packed-switch v11, :pswitch_data_1

    packed-switch v11, :pswitch_data_2

    :pswitch_0
    move-object/from16 v0, v17

    goto/16 :goto_9

    :pswitch_1
    new-instance v0, Landroidx/media3/extractor/ts/SectionReader;

    new-instance v4, Landroidx/core/view/MenuHostHelper;

    const-string v6, "application/x-scte35"

    invoke-direct {v4, v6}, Landroidx/core/view/MenuHostHelper;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v4}, Landroidx/media3/extractor/ts/SectionReader;-><init>(Landroidx/media3/extractor/ts/SectionPayloadReader;)V

    goto/16 :goto_9

    :pswitch_2
    new-instance v6, Landroidx/media3/extractor/ts/PesReader;

    new-instance v11, Landroidx/media3/extractor/ts/Ac3Reader;

    invoke-virtual {v4}, Lcom/google/common/base/Splitter;->getRoleFlags()I

    move-result v4

    const/4 v14, 0x0

    invoke-direct {v11, v0, v4, v14, v13}, Landroidx/media3/extractor/ts/Ac3Reader;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-direct {v6, v11}, Landroidx/media3/extractor/ts/PesReader;-><init>(Landroidx/media3/extractor/ts/ElementaryStreamReader;)V

    :goto_8
    move-object v0, v6

    goto/16 :goto_9

    :pswitch_3
    new-instance v6, Landroidx/media3/extractor/ts/PesReader;

    new-instance v11, Landroidx/media3/extractor/ts/LatmReader;

    invoke-virtual {v4}, Lcom/google/common/base/Splitter;->getRoleFlags()I

    move-result v4

    invoke-direct {v11, v0, v4}, Landroidx/media3/extractor/ts/LatmReader;-><init>(Ljava/lang/String;I)V

    invoke-direct {v6, v11}, Landroidx/media3/extractor/ts/PesReader;-><init>(Landroidx/media3/extractor/ts/ElementaryStreamReader;)V

    goto :goto_8

    :pswitch_4
    new-instance v0, Landroidx/media3/extractor/ts/PesReader;

    new-instance v11, Landroidx/media3/extractor/ts/H263Reader;

    new-instance v13, Lcom/motorola/camera/CameraKpi;

    invoke-virtual {v6, v4}, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;->getClosedCaptionFormats(Lcom/google/common/base/Splitter;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v13, v4}, Lcom/motorola/camera/CameraKpi;-><init>(Ljava/util/List;)V

    invoke-direct {v11, v13}, Landroidx/media3/extractor/ts/H263Reader;-><init>(Lcom/motorola/camera/CameraKpi;)V

    invoke-direct {v0, v11}, Landroidx/media3/extractor/ts/PesReader;-><init>(Landroidx/media3/extractor/ts/ElementaryStreamReader;)V

    goto/16 :goto_9

    :pswitch_5
    new-instance v6, Landroidx/media3/extractor/ts/PesReader;

    new-instance v11, Landroidx/media3/extractor/ts/AdtsReader;

    invoke-virtual {v4}, Lcom/google/common/base/Splitter;->getRoleFlags()I

    move-result v4

    const/4 v14, 0x0

    invoke-direct {v11, v0, v4, v14, v13}, Landroidx/media3/extractor/ts/AdtsReader;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    invoke-direct {v6, v11}, Landroidx/media3/extractor/ts/PesReader;-><init>(Landroidx/media3/extractor/ts/ElementaryStreamReader;)V

    goto :goto_8

    :cond_16
    new-instance v6, Landroidx/media3/extractor/ts/PesReader;

    new-instance v11, Landroidx/media3/extractor/ts/DtsReader;

    invoke-virtual {v4}, Lcom/google/common/base/Splitter;->getRoleFlags()I

    move-result v4

    const/16 v13, 0x1520

    invoke-direct {v11, v0, v4, v13}, Landroidx/media3/extractor/ts/DtsReader;-><init>(Ljava/lang/String;II)V

    invoke-direct {v6, v11}, Landroidx/media3/extractor/ts/PesReader;-><init>(Landroidx/media3/extractor/ts/ElementaryStreamReader;)V

    goto :goto_8

    :cond_17
    :pswitch_6
    new-instance v6, Landroidx/media3/extractor/ts/PesReader;

    new-instance v11, Landroidx/media3/extractor/ts/DtsReader;

    invoke-virtual {v4}, Lcom/google/common/base/Splitter;->getRoleFlags()I

    move-result v4

    const/16 v13, 0x1000

    invoke-direct {v11, v0, v4, v13}, Landroidx/media3/extractor/ts/DtsReader;-><init>(Ljava/lang/String;II)V

    invoke-direct {v6, v11}, Landroidx/media3/extractor/ts/PesReader;-><init>(Landroidx/media3/extractor/ts/ElementaryStreamReader;)V

    goto :goto_8

    :cond_18
    new-instance v0, Landroidx/media3/extractor/ts/SectionReader;

    new-instance v4, Landroidx/core/view/MenuHostHelper;

    const-string v6, "application/vnd.dvb.ait"

    invoke-direct {v4, v6}, Landroidx/core/view/MenuHostHelper;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v4}, Landroidx/media3/extractor/ts/SectionReader;-><init>(Landroidx/media3/extractor/ts/SectionPayloadReader;)V

    goto/16 :goto_9

    :cond_19
    new-instance v6, Landroidx/media3/extractor/ts/PesReader;

    new-instance v11, Landroidx/media3/extractor/ts/Ac3Reader;

    invoke-virtual {v4}, Lcom/google/common/base/Splitter;->getRoleFlags()I

    move-result v4

    const/4 v14, 0x1

    invoke-direct {v11, v0, v4, v14, v13}, Landroidx/media3/extractor/ts/Ac3Reader;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-direct {v6, v11}, Landroidx/media3/extractor/ts/PesReader;-><init>(Landroidx/media3/extractor/ts/ElementaryStreamReader;)V

    goto :goto_8

    :cond_1a
    new-instance v0, Landroidx/media3/extractor/ts/PesReader;

    new-instance v6, Landroidx/media3/extractor/ts/Id3Reader;

    iget-object v4, v4, Lcom/google/common/base/Splitter;->trimmer:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    invoke-direct {v6, v4}, Landroidx/media3/extractor/ts/Id3Reader;-><init>(Ljava/util/List;)V

    invoke-direct {v0, v6}, Landroidx/media3/extractor/ts/PesReader;-><init>(Landroidx/media3/extractor/ts/ElementaryStreamReader;)V

    goto :goto_9

    :cond_1b
    new-instance v0, Landroidx/media3/extractor/ts/PesReader;

    new-instance v4, Landroidx/media3/extractor/ts/MpeghReader;

    invoke-direct {v4}, Landroidx/media3/extractor/ts/MpeghReader;-><init>()V

    invoke-direct {v0, v4}, Landroidx/media3/extractor/ts/PesReader;-><init>(Landroidx/media3/extractor/ts/ElementaryStreamReader;)V

    goto :goto_9

    :cond_1c
    new-instance v0, Landroidx/media3/extractor/ts/PesReader;

    new-instance v11, Landroidx/media3/extractor/ts/H265Reader;

    new-instance v13, Landroidx/core/view/MenuHostHelper;

    invoke-virtual {v6, v4}, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;->getClosedCaptionFormats(Lcom/google/common/base/Splitter;)Ljava/util/List;

    move-result-object v4

    const/16 v6, 0x18

    invoke-direct {v13, v4, v6}, Landroidx/core/view/MenuHostHelper;-><init>(Ljava/util/List;I)V

    invoke-direct {v11, v13}, Landroidx/media3/extractor/ts/H265Reader;-><init>(Landroidx/core/view/MenuHostHelper;)V

    invoke-direct {v0, v11}, Landroidx/media3/extractor/ts/PesReader;-><init>(Landroidx/media3/extractor/ts/ElementaryStreamReader;)V

    goto :goto_9

    :cond_1d
    new-instance v0, Landroidx/media3/extractor/ts/PesReader;

    new-instance v11, Landroidx/media3/extractor/ts/H264Reader;

    new-instance v13, Landroidx/core/view/MenuHostHelper;

    invoke-virtual {v6, v4}, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;->getClosedCaptionFormats(Lcom/google/common/base/Splitter;)Ljava/util/List;

    move-result-object v4

    const/16 v6, 0x18

    invoke-direct {v13, v4, v6}, Landroidx/core/view/MenuHostHelper;-><init>(Ljava/util/List;I)V

    const/4 v14, 0x0

    invoke-direct {v11, v13, v14, v14}, Landroidx/media3/extractor/ts/H264Reader;-><init>(Landroidx/core/view/MenuHostHelper;ZZ)V

    invoke-direct {v0, v11}, Landroidx/media3/extractor/ts/PesReader;-><init>(Landroidx/media3/extractor/ts/ElementaryStreamReader;)V

    goto :goto_9

    :cond_1e
    new-instance v0, Landroidx/media3/extractor/ts/PesReader;

    new-instance v4, Landroidx/media3/extractor/ts/Id3Reader;

    invoke-direct {v4}, Landroidx/media3/extractor/ts/Id3Reader;-><init>()V

    invoke-direct {v0, v4}, Landroidx/media3/extractor/ts/PesReader;-><init>(Landroidx/media3/extractor/ts/ElementaryStreamReader;)V

    goto :goto_9

    :cond_1f
    new-instance v6, Landroidx/media3/extractor/ts/PesReader;

    new-instance v11, Landroidx/media3/extractor/ts/MpegAudioReader;

    invoke-virtual {v4}, Lcom/google/common/base/Splitter;->getRoleFlags()I

    move-result v4

    invoke-direct {v11, v0, v4, v13}, Landroidx/media3/extractor/ts/MpegAudioReader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-direct {v6, v11}, Landroidx/media3/extractor/ts/PesReader;-><init>(Landroidx/media3/extractor/ts/ElementaryStreamReader;)V

    goto/16 :goto_8

    :cond_20
    :pswitch_7
    new-instance v0, Landroidx/media3/extractor/ts/PesReader;

    new-instance v11, Landroidx/media3/extractor/ts/H262Reader;

    new-instance v14, Lcom/motorola/camera/CameraKpi;

    invoke-virtual {v6, v4}, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;->getClosedCaptionFormats(Lcom/google/common/base/Splitter;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v14, v4}, Lcom/motorola/camera/CameraKpi;-><init>(Ljava/util/List;)V

    invoke-direct {v11, v14, v13}, Landroidx/media3/extractor/ts/H262Reader;-><init>(Lcom/motorola/camera/CameraKpi;Ljava/lang/String;)V

    invoke-direct {v0, v11}, Landroidx/media3/extractor/ts/PesReader;-><init>(Landroidx/media3/extractor/ts/ElementaryStreamReader;)V

    :goto_9
    invoke-virtual {v3, v10, v10}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v2, v10, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_a
    move-object/from16 v0, p0

    move v13, v15

    move-object/from16 v4, v25

    move-object/from16 v6, v31

    const/4 v10, 0x0

    const/16 v11, 0xc

    const/16 v14, 0xd

    const/4 v15, 0x4

    goto/16 :goto_1

    :cond_21
    move-object/from16 v31, v6

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    const/4 v6, 0x0

    :goto_b
    if-ge v6, v0, :cond_23

    invoke-virtual {v3, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    invoke-virtual {v3, v6}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    const/4 v9, 0x1

    invoke-virtual {v7, v1, v9}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v10, v5, Landroidx/media3/extractor/ts/TsExtractor;->trackPids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v10, v4, v9}, Landroid/util/SparseBooleanArray;->put(IZ)V

    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/media3/extractor/ts/TsPayloadReader;

    if-eqz v9, :cond_22

    iget-object v10, v5, Landroidx/media3/extractor/ts/TsExtractor;->output:Landroidx/media3/extractor/ExtractorOutput;

    new-instance v11, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;

    const/16 v13, 0x2000

    invoke-direct {v11, v12, v1, v13}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;-><init>(III)V

    invoke-interface {v9, v8, v10, v11}, Landroidx/media3/extractor/ts/TsPayloadReader;->init(Landroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    move-object/from16 v1, v31

    invoke-virtual {v1, v4, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_c

    :cond_22
    move-object/from16 v1, v31

    :goto_c
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v31, v1

    goto :goto_b

    :cond_23
    move-object/from16 v4, p0

    move-object/from16 v1, v31

    iget v0, v4, Landroidx/media3/common/util/GlProgram;->programId:I

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    const/4 v14, 0x0

    iput v14, v5, Landroidx/media3/extractor/ts/TsExtractor;->remainingPmts:I

    iget-object v0, v5, Landroidx/media3/extractor/ts/TsExtractor;->output:Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {v0}, Landroidx/media3/extractor/ExtractorOutput;->endTracks()V

    const/4 v9, 0x1

    iput-boolean v9, v5, Landroidx/media3/extractor/ts/TsExtractor;->tracksEnded:Z

    return-void

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x80
        :pswitch_7
        :pswitch_2
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x86
        :pswitch_1
        :pswitch_2
        :pswitch_6
    .end packed-switch
.end method

.method public consumeBooleanLiteral(ILjava/lang/String;)V
    .locals 8

    iget-object v0, p0, Landroidx/media3/common/util/GlProgram;->uniformByName:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x6

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-lt v1, v2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    move v2, v4

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    add-int v7, p1, v2

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    or-int/lit8 v7, v7, 0x20

    if-ne v6, v7, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Expected valid boolean literal prefix, but had \'"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/media3/common/util/GlProgram;->consumeStringLenient()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x27

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v4, v5, v3}, Landroidx/media3/common/util/GlProgram;->fail$default(Landroidx/media3/common/util/GlProgram;Ljava/lang/String;ILjava/lang/String;I)V

    throw v5

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, p1

    iput p2, p0, Landroidx/media3/common/util/GlProgram;->programId:I

    return-void

    :cond_2
    const-string p1, "Unexpected end of boolean literal"

    invoke-static {p0, p1, v4, v5, v3}, Landroidx/media3/common/util/GlProgram;->fail$default(Landroidx/media3/common/util/GlProgram;Ljava/lang/String;ILjava/lang/String;I)V

    throw v5
.end method

.method public consumeKeyString()Ljava/lang/String;
    .locals 13

    iget-object v0, p0, Landroidx/media3/common/util/GlProgram;->uniformByName:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const/16 v1, 0x22

    invoke-virtual {p0, v1}, Landroidx/media3/common/util/GlProgram;->consumeNextToken(C)V

    iget v2, p0, Landroidx/media3/common/util/GlProgram;->programId:I

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CII)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, -0x1

    if-ne v4, v6, :cond_2

    invoke-virtual {p0}, Landroidx/media3/common/util/GlProgram;->consumeStringLenient()Ljava/lang/String;

    iget v1, p0, Landroidx/media3/common/util/GlProgram;->programId:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v1, v2, :cond_1

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "EOF"

    :goto_1
    const-string v2, "Expected quotation mark \'\"\', but had \'"

    const-string v4, "\' instead"

    invoke-static {v2, v0, v4}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1, v5, v3}, Landroidx/media3/common/util/GlProgram;->fail$default(Landroidx/media3/common/util/GlProgram;Ljava/lang/String;ILjava/lang/String;I)V

    throw v5

    :cond_2
    move v7, v2

    :goto_2
    if-ge v7, v4, :cond_e

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x5c

    if-ne v8, v9, :cond_d

    iget v2, p0, Landroidx/media3/common/util/GlProgram;->programId:I

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/4 v8, 0x0

    move v10, v8

    :goto_3
    const/4 v11, 0x1

    if-eq v4, v1, :cond_b

    const-string v12, "Unexpected EOF"

    if-ne v4, v9, :cond_8

    iget-object v4, p0, Landroidx/media3/common/util/GlProgram;->attributeByName:Ljava/lang/Object;

    check-cast v4, Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {p0, v7}, Landroidx/media3/common/util/GlProgram;->prefetchOrEof(I)I

    move-result v2

    const/4 v4, 0x6

    if-eq v2, v6, :cond_7

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v10, 0x75

    if-ne v2, v10, :cond_3

    invoke-virtual {p0, v0, v7}, Landroidx/media3/common/util/GlProgram;->appendHex(Ljava/lang/CharSequence;I)I

    move-result v7

    goto :goto_5

    :cond_3
    if-ge v2, v10, :cond_4

    sget-object v10, Lkotlinx/serialization/json/internal/CharMappings;->ESCAPE_2_CHAR:[C

    aget-char v10, v10, v2

    goto :goto_4

    :cond_4
    move v10, v8

    :goto_4
    if-eqz v10, :cond_6

    iget-object v2, p0, Landroidx/media3/common/util/GlProgram;->attributeByName:Ljava/lang/Object;

    check-cast v2, Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_5
    invoke-virtual {p0, v7}, Landroidx/media3/common/util/GlProgram;->prefetchOrEof(I)I

    move-result v2

    if-eq v2, v6, :cond_5

    :goto_6
    move v7, v2

    move v10, v11

    goto :goto_7

    :cond_5
    invoke-static {p0, v12, v2, v5, v3}, Landroidx/media3/common/util/GlProgram;->fail$default(Landroidx/media3/common/util/GlProgram;Ljava/lang/String;ILjava/lang/String;I)V

    throw v5

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid escaped char \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v8, v5, v4}, Landroidx/media3/common/util/GlProgram;->fail$default(Landroidx/media3/common/util/GlProgram;Ljava/lang/String;ILjava/lang/String;I)V

    throw v5

    :cond_7
    const-string v0, "Expected escape sequence to continue, got EOF"

    invoke-static {p0, v0, v8, v5, v4}, Landroidx/media3/common/util/GlProgram;->fail$default(Landroidx/media3/common/util/GlProgram;Ljava/lang/String;ILjava/lang/String;I)V

    throw v5

    :cond_8
    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v7, v4, :cond_a

    iget-object v4, p0, Landroidx/media3/common/util/GlProgram;->attributeByName:Ljava/lang/Object;

    check-cast v4, Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Landroidx/media3/common/util/GlProgram;->prefetchOrEof(I)I

    move-result v2

    if-eq v2, v6, :cond_9

    goto :goto_6

    :cond_9
    invoke-static {p0, v12, v2, v5, v3}, Landroidx/media3/common/util/GlProgram;->fail$default(Landroidx/media3/common/util/GlProgram;Ljava/lang/String;ILjava/lang/String;I)V

    throw v5

    :cond_a
    :goto_7
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    goto :goto_3

    :cond_b
    if-nez v10, :cond_c

    invoke-virtual {v0, v2, v7}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_c
    invoke-virtual {p0, v2, v7}, Landroidx/media3/common/util/GlProgram;->decodedString(II)Ljava/lang/String;

    move-result-object v0

    :goto_8
    add-int/2addr v7, v11

    iput v7, p0, Landroidx/media3/common/util/GlProgram;->programId:I

    return-object v0

    :cond_d
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    :cond_e
    add-int/lit8 v1, v4, 0x1

    iput v1, p0, Landroidx/media3/common/util/GlProgram;->programId:I

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "substring(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public consumeNextToken()B
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/media3/common/util/GlProgram;->uniformByName:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 2
    iget v1, p0, Landroidx/media3/common/util/GlProgram;->programId:I

    :goto_0
    const/4 v2, -0x1

    const/16 v3, 0xa

    if-eq v1, v2, :cond_2

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    add-int/lit8 v2, v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x20

    if-eq v1, v4, :cond_1

    if-eq v1, v3, :cond_1

    const/16 v3, 0xd

    if-eq v1, v3, :cond_1

    const/16 v3, 0x9

    if-ne v1, v3, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    iput v2, p0, Landroidx/media3/common/util/GlProgram;->programId:I

    .line 6
    invoke-static {v1}, Lkotlinx/serialization/json/internal/WriteModeKt;->charToTokenClass(C)B

    move-result p0

    return p0

    :cond_1
    :goto_1
    move v1, v2

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Landroidx/media3/common/util/GlProgram;->programId:I

    return v3
.end method

.method public consumeNextToken(B)B
    .locals 4

    .line 17
    iget-object v0, p0, Landroidx/media3/common/util/GlProgram;->uniformByName:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/media3/common/util/GlProgram;->consumeNextToken()B

    move-result v1

    if-eq v1, p1, :cond_2

    .line 18
    invoke-static {p1}, Lkotlinx/serialization/json/internal/WriteModeKt;->tokenDescription(B)Ljava/lang/String;

    move-result-object p1

    .line 19
    iget v1, p0, Landroidx/media3/common/util/GlProgram;->programId:I

    add-int/lit8 v2, v1, -0x1

    .line 20
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v1, v3, :cond_1

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "EOF"

    .line 21
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Expected "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", but had \'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' instead"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 22
    invoke-static {p0, p1, v2, v1, v0}, Landroidx/media3/common/util/GlProgram;->fail$default(Landroidx/media3/common/util/GlProgram;Ljava/lang/String;ILjava/lang/String;I)V

    throw v1

    :cond_2
    return v1
.end method

.method public consumeNextToken(C)V
    .locals 6

    .line 8
    iget v0, p0, Landroidx/media3/common/util/GlProgram;->programId:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_4

    .line 9
    iget-object v3, p0, Landroidx/media3/common/util/GlProgram;->uniformByName:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 10
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_3

    add-int/lit8 v4, v0, 0x1

    .line 11
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x20

    if-eq v0, v5, :cond_2

    const/16 v5, 0xa

    if-eq v0, v5, :cond_2

    const/16 v5, 0xd

    if-eq v0, v5, :cond_2

    const/16 v5, 0x9

    if-ne v0, v5, :cond_0

    goto :goto_1

    .line 12
    :cond_0
    iput v4, p0, Landroidx/media3/common/util/GlProgram;->programId:I

    if-ne v0, p1, :cond_1

    return-void

    .line 13
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/media3/common/util/GlProgram;->unexpectedToken(C)V

    throw v1

    :cond_2
    :goto_1
    move v0, v4

    goto :goto_0

    .line 14
    :cond_3
    iput v2, p0, Landroidx/media3/common/util/GlProgram;->programId:I

    .line 15
    invoke-virtual {p0, p1}, Landroidx/media3/common/util/GlProgram;->unexpectedToken(C)V

    throw v1

    .line 16
    :cond_4
    invoke-virtual {p0, p1}, Landroidx/media3/common/util/GlProgram;->unexpectedToken(C)V

    throw v1
.end method

.method public consumeNumericLiteral()J
    .locals 21

    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroidx/media3/common/util/GlProgram;->skipWhitespaces()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/GlProgram;->prefetchOrEof(I)I

    move-result v1

    iget-object v2, v0, Landroidx/media3/common/util/GlProgram;->uniformByName:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "EOF"

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-ge v1, v3, :cond_1d

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1d

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v8, 0x22

    if-ne v3, v8, :cond_1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v1, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0, v4, v7, v6, v5}, Landroidx/media3/common/util/GlProgram;->fail$default(Landroidx/media3/common/util/GlProgram;Ljava/lang/String;ILjava/lang/String;I)V

    throw v6

    :cond_1
    move v3, v7

    :goto_0
    move v12, v1

    move v11, v7

    move v13, v11

    move v14, v13

    const-wide/16 v9, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v15

    const-string v8, "Numeric value overflow"

    if-eq v12, v15, :cond_e

    invoke-virtual {v2, v12}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v5, 0x65

    if-eq v15, v5, :cond_2

    const/16 v5, 0x45

    if-ne v15, v5, :cond_4

    :cond_2
    if-nez v13, :cond_4

    if-eq v12, v1, :cond_3

    add-int/lit8 v12, v12, 0x1

    const/4 v5, 0x6

    const/16 v8, 0x22

    const/4 v11, 0x1

    const/4 v13, 0x1

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected symbol "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, " in numeric literal"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x6

    invoke-static {v0, v1, v7, v6, v5}, Landroidx/media3/common/util/GlProgram;->fail$default(Landroidx/media3/common/util/GlProgram;Ljava/lang/String;ILjava/lang/String;I)V

    throw v6

    :cond_4
    const-string v5, "Unexpected symbol \'-\' in numeric literal"

    const/16 v6, 0x2d

    if-ne v15, v6, :cond_6

    if-eqz v13, :cond_6

    if-eq v12, v1, :cond_5

    add-int/lit8 v12, v12, 0x1

    move v11, v7

    :goto_2
    const/4 v5, 0x6

    const/4 v6, 0x0

    const/16 v8, 0x22

    goto :goto_1

    :cond_5
    const/4 v6, 0x6

    const/4 v8, 0x0

    invoke-static {v0, v5, v7, v8, v6}, Landroidx/media3/common/util/GlProgram;->fail$default(Landroidx/media3/common/util/GlProgram;Ljava/lang/String;ILjava/lang/String;I)V

    throw v8

    :cond_6
    const/4 v6, 0x0

    const/16 v6, 0x2b

    if-ne v15, v6, :cond_8

    if-eqz v13, :cond_8

    if-eq v12, v1, :cond_7

    add-int/lit8 v12, v12, 0x1

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/16 v8, 0x22

    const/4 v11, 0x1

    goto :goto_1

    :cond_7
    const-string v1, "Unexpected symbol \'+\' in numeric literal"

    const/4 v2, 0x0

    const/4 v6, 0x6

    invoke-static {v0, v1, v7, v2, v6}, Landroidx/media3/common/util/GlProgram;->fail$default(Landroidx/media3/common/util/GlProgram;Ljava/lang/String;ILjava/lang/String;I)V

    throw v2

    :cond_8
    move/from16 v20, v3

    const/4 v3, 0x0

    const/4 v6, 0x6

    const/16 v3, 0x2d

    if-ne v15, v3, :cond_a

    if-ne v12, v1, :cond_9

    add-int/lit8 v12, v12, 0x1

    move v5, v6

    move/from16 v3, v20

    const/4 v6, 0x0

    const/16 v8, 0x22

    const/4 v14, 0x1

    goto :goto_1

    :cond_9
    const/4 v3, 0x0

    invoke-static {v0, v5, v7, v3, v6}, Landroidx/media3/common/util/GlProgram;->fail$default(Landroidx/media3/common/util/GlProgram;Ljava/lang/String;ILjava/lang/String;I)V

    throw v3

    :cond_a
    invoke-static {v15}, Lkotlinx/serialization/json/internal/WriteModeKt;->charToTokenClass(C)B

    move-result v3

    if-nez v3, :cond_f

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v3, v15, -0x30

    if-ltz v3, :cond_d

    const/16 v5, 0xa

    if-ge v3, v5, :cond_d

    if-eqz v13, :cond_b

    int-to-long v5, v5

    mul-long/2addr v9, v5

    int-to-long v5, v3

    add-long/2addr v9, v5

    :goto_3
    move/from16 v3, v20

    goto :goto_2

    :cond_b
    int-to-long v5, v5

    mul-long v16, v16, v5

    int-to-long v5, v3

    sub-long v16, v16, v5

    cmp-long v3, v16, v18

    if-gtz v3, :cond_c

    goto :goto_3

    :cond_c
    const/4 v3, 0x0

    const/4 v6, 0x6

    invoke-static {v0, v8, v7, v3, v6}, Landroidx/media3/common/util/GlProgram;->fail$default(Landroidx/media3/common/util/GlProgram;Ljava/lang/String;ILjava/lang/String;I)V

    throw v3

    :cond_d
    const/4 v3, 0x0

    const/4 v6, 0x6

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected symbol \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "\' in numeric literal"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7, v3, v6}, Landroidx/media3/common/util/GlProgram;->fail$default(Landroidx/media3/common/util/GlProgram;Ljava/lang/String;ILjava/lang/String;I)V

    throw v3

    :cond_e
    move/from16 v20, v3

    :cond_f
    if-eq v12, v1, :cond_10

    const/4 v3, 0x1

    goto :goto_4

    :cond_10
    move v3, v7

    :goto_4
    if-eq v1, v12, :cond_11

    if-eqz v14, :cond_12

    add-int/lit8 v5, v12, -0x1

    if-eq v1, v5, :cond_11

    goto :goto_5

    :cond_11
    const/4 v3, 0x0

    const/4 v6, 0x6

    goto/16 :goto_9

    :cond_12
    :goto_5
    if-eqz v20, :cond_15

    if-eqz v3, :cond_14

    invoke-virtual {v2, v12}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x22

    if-ne v1, v2, :cond_13

    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    :cond_13
    const-string v1, "Expected closing quotation mark"

    const/4 v3, 0x0

    const/4 v6, 0x6

    invoke-static {v0, v1, v7, v3, v6}, Landroidx/media3/common/util/GlProgram;->fail$default(Landroidx/media3/common/util/GlProgram;Ljava/lang/String;ILjava/lang/String;I)V

    throw v3

    :cond_14
    const/4 v3, 0x0

    const/4 v6, 0x6

    invoke-static {v0, v4, v7, v3, v6}, Landroidx/media3/common/util/GlProgram;->fail$default(Landroidx/media3/common/util/GlProgram;Ljava/lang/String;ILjava/lang/String;I)V

    throw v3

    :cond_15
    :goto_6
    iput v12, v0, Landroidx/media3/common/util/GlProgram;->programId:I

    move-wide/from16 v1, v16

    if-eqz v13, :cond_1a

    long-to-double v1, v1

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    if-nez v11, :cond_16

    long-to-double v5, v9

    neg-double v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    goto :goto_7

    :cond_16
    const/4 v5, 0x1

    if-ne v11, v5, :cond_19

    long-to-double v5, v9

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    :goto_7
    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x43e0000000000000L    # 9.223372036854776E18

    cmpl-double v3, v1, v3

    if-gtz v3, :cond_18

    const-wide/high16 v3, -0x3c20000000000000L    # -9.223372036854776E18

    cmpg-double v3, v1, v3

    if-ltz v3, :cond_18

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    cmpg-double v3, v3, v1

    if-nez v3, :cond_17

    double-to-long v10, v1

    goto :goto_8

    :cond_17
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Can\'t convert "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " to Long"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v6, 0x6

    invoke-static {v0, v1, v7, v3, v6}, Landroidx/media3/common/util/GlProgram;->fail$default(Landroidx/media3/common/util/GlProgram;Ljava/lang/String;ILjava/lang/String;I)V

    throw v3

    :cond_18
    const/4 v3, 0x0

    const/4 v6, 0x6

    invoke-static {v0, v8, v7, v3, v6}, Landroidx/media3/common/util/GlProgram;->fail$default(Landroidx/media3/common/util/GlProgram;Ljava/lang/String;ILjava/lang/String;I)V

    throw v3

    :cond_19
    new-instance v0, Lcom/google/gson/JsonParseException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1a
    move-wide v10, v1

    :goto_8
    if-eqz v14, :cond_1b

    return-wide v10

    :cond_1b
    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v1, v10, v1

    if-eqz v1, :cond_1c

    neg-long v0, v10

    return-wide v0

    :cond_1c
    const/4 v3, 0x0

    const/4 v6, 0x6

    invoke-static {v0, v8, v7, v3, v6}, Landroidx/media3/common/util/GlProgram;->fail$default(Landroidx/media3/common/util/GlProgram;Ljava/lang/String;ILjava/lang/String;I)V

    throw v3

    :goto_9
    const-string v1, "Expected numeric literal"

    invoke-static {v0, v1, v7, v3, v6}, Landroidx/media3/common/util/GlProgram;->fail$default(Landroidx/media3/common/util/GlProgram;Ljava/lang/String;ILjava/lang/String;I)V

    throw v3

    :cond_1d
    move-object v3, v6

    move v6, v5

    invoke-static {v0, v4, v7, v3, v6}, Landroidx/media3/common/util/GlProgram;->fail$default(Landroidx/media3/common/util/GlProgram;Ljava/lang/String;ILjava/lang/String;I)V

    throw v3
.end method

.method public consumeString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Landroidx/media3/common/util/GlProgram;->uniforms:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/media3/common/util/GlProgram;->uniforms:Ljava/lang/Object;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/util/GlProgram;->consumeKeyString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public consumeStringLenient()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Landroidx/media3/common/util/GlProgram;->uniformByName:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Landroidx/media3/common/util/GlProgram;->uniforms:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object v2, p0, Landroidx/media3/common/util/GlProgram;->uniforms:Ljava/lang/Object;

    return-object v1

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/util/GlProgram;->skipWhitespaces()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_7

    const/4 v3, -0x1

    if-eq v1, v3, :cond_7

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lkotlinx/serialization/json/internal/WriteModeKt;->charToTokenClass(C)B

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    invoke-virtual {p0}, Landroidx/media3/common/util/GlProgram;->consumeString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v6, 0x0

    if-nez v4, :cond_6

    move v2, v6

    :cond_2
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lkotlinx/serialization/json/internal/WriteModeKt;->charToTokenClass(C)B

    move-result v4

    if-nez v4, :cond_4

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v1, v4, :cond_2

    iget v2, p0, Landroidx/media3/common/util/GlProgram;->programId:I

    iget-object v4, p0, Landroidx/media3/common/util/GlProgram;->attributeByName:Ljava/lang/Object;

    check-cast v4, Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Landroidx/media3/common/util/GlProgram;->prefetchOrEof(I)I

    move-result v2

    if-ne v2, v3, :cond_3

    iput v1, p0, Landroidx/media3/common/util/GlProgram;->programId:I

    invoke-virtual {p0, v6, v6}, Landroidx/media3/common/util/GlProgram;->decodedString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    move v1, v2

    move v2, v5

    goto :goto_0

    :cond_4
    if-nez v2, :cond_5

    iget v2, p0, Landroidx/media3/common/util/GlProgram;->programId:I

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    iget v0, p0, Landroidx/media3/common/util/GlProgram;->programId:I

    invoke-virtual {p0, v0, v1}, Landroidx/media3/common/util/GlProgram;->decodedString(II)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput v1, p0, Landroidx/media3/common/util/GlProgram;->programId:I

    return-object v0

    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Expected beginning of the string, but got "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {p0, v0, v6, v2, v1}, Landroidx/media3/common/util/GlProgram;->fail$default(Landroidx/media3/common/util/GlProgram;Ljava/lang/String;ILjava/lang/String;I)V

    throw v2

    :cond_7
    const-string v0, "EOF"

    const/4 v3, 0x4

    invoke-static {p0, v0, v1, v2, v3}, Landroidx/media3/common/util/GlProgram;->fail$default(Landroidx/media3/common/util/GlProgram;Ljava/lang/String;ILjava/lang/String;I)V

    throw v2
.end method

.method public decodedString(II)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Landroidx/media3/common/util/GlProgram;->attributeByName:Ljava/lang/Object;

    check-cast v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/media3/common/util/GlProgram;->uniformByName:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/media3/common/util/GlProgram;->attributeByName:Ljava/lang/Object;

    check-cast p0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "toString(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->setLength(I)V

    return-object p1
.end method

.method public detachViewFromParent(I)V
    .locals 3

    invoke-virtual {p0, p1}, Landroidx/media3/common/util/GlProgram;->getOffset(I)I

    move-result p1

    iget-object v0, p0, Landroidx/media3/common/util/GlProgram;->uniforms:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/ChildHelper$Bucket;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->remove(I)Z

    iget-object p0, p0, Landroidx/media3/common/util/GlProgram;->attributes:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$7;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$7;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "called detach on an already detached child "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {p0, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    sget-boolean v1, Landroidx/recyclerview/widget/RecyclerView;->sVerboseLoggingEnabled:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "tmpDetach "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RecyclerView"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    goto :goto_1

    :cond_3
    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->sDebugAssertionsEnabled:Z

    if-nez v0, :cond_5

    :cond_4
    :goto_1
    invoke-static {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->access$100(Landroidx/recyclerview/widget/RecyclerView;I)V

    return-void

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No view at offset "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {p0, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public fail(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hint"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const-string p3, ""

    goto :goto_0

    :cond_0
    const-string v0, "\n"

    invoke-virtual {v0, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :goto_0
    const-string v0, " at path: "

    invoke-static {p1, v0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Landroidx/media3/common/util/GlProgram;->attributes:Ljava/lang/Object;

    check-cast v0, Lcom/google/common/base/Splitter;

    invoke-virtual {v0}, Lcom/google/common/base/Splitter;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Landroidx/media3/common/util/GlProgram;->uniformByName:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {p2, p1, p0}, Lkotlinx/serialization/json/internal/WriteModeKt;->JsonDecodingException(ILjava/lang/String;Ljava/lang/CharSequence;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p0

    throw p0
.end method

.method public fromHexChar(Ljava/lang/CharSequence;I)I
    .locals 2

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    const/16 p2, 0x30

    if-gt p2, p1, :cond_0

    const/16 v0, 0x3a

    if-ge p1, v0, :cond_0

    sub-int/2addr p1, p2

    return p1

    :cond_0
    const/16 p2, 0x61

    if-gt p2, p1, :cond_1

    const/16 p2, 0x67

    if-ge p1, p2, :cond_1

    add-int/lit8 p1, p1, -0x57

    return p1

    :cond_1
    const/16 p2, 0x41

    if-gt p2, p1, :cond_2

    const/16 p2, 0x47

    if-ge p1, p2, :cond_2

    add-int/lit8 p1, p1, -0x37

    return p1

    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Invalid toHexChar char \'"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "\' in unicode escape"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1, v0}, Landroidx/media3/common/util/GlProgram;->fail$default(Landroidx/media3/common/util/GlProgram;Ljava/lang/String;ILjava/lang/String;I)V

    throw v1
.end method

.method public getAttributeArrayLocationAndEnable(Ljava/lang/String;)I
    .locals 0

    iget p0, p0, Landroidx/media3/common/util/GlProgram;->programId:I

    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p0

    invoke-static {p0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    invoke-static {}, Landroidx/media3/common/util/Log;->checkGlError()V

    return p0
.end method

.method public getChildAt(I)Landroid/view/View;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/media3/common/util/GlProgram;->getOffset(I)I

    move-result p1

    iget-object p0, p0, Landroidx/media3/common/util/GlProgram;->attributes:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$7;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$7;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getChildCount()I
    .locals 1

    iget-object v0, p0, Landroidx/media3/common/util/GlProgram;->attributes:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$7;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$7;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget-object p0, p0, Landroidx/media3/common/util/GlProgram;->attributeByName:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public getOffset(I)I
    .locals 4

    iget-object v0, p0, Landroidx/media3/common/util/GlProgram;->uniforms:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/ChildHelper$Bucket;

    const/4 v1, -0x1

    if-gez p1, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Landroidx/media3/common/util/GlProgram;->attributes:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$7;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$7;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    move v2, p1

    :goto_0
    if-ge v2, p0, :cond_3

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->countOnesBefore(I)I

    move-result v3

    sub-int v3, v2, v3

    sub-int v3, p1, v3

    if-nez v3, :cond_2

    :goto_1
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->get(I)Z

    move-result p0

    if-eqz p0, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return v2

    :cond_2
    add-int/2addr v2, v3

    goto :goto_0

    :cond_3
    return v1
.end method

.method public getUnfilteredChildAt(I)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/util/GlProgram;->attributes:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$7;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$7;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getUnfilteredChildCount()I
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/util/GlProgram;->attributes:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$7;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$7;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    return p0
.end method

.method public hideViewInternal(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/common/util/GlProgram;->attributeByName:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Landroidx/media3/common/util/GlProgram;->attributes:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$7;

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$7;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->onEnteredHiddenState(Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_0
    return-void
.end method

.method public init(Landroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 0

    return-void
.end method

.method public peekLeadingMatchingValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "keyToMatch"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Landroidx/media3/common/util/GlProgram;->programId:I

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroidx/media3/common/util/GlProgram;->consumeNextToken()B

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x6

    if-eq v2, v3, :cond_0

    :goto_0
    iput v0, p0, Landroidx/media3/common/util/GlProgram;->programId:I

    iput-object v1, p0, Landroidx/media3/common/util/GlProgram;->uniforms:Ljava/lang/Object;

    return-object v1

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroidx/media3/common/util/GlProgram;->peekString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iput-object v1, p0, Landroidx/media3/common/util/GlProgram;->uniforms:Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/media3/common/util/GlProgram;->consumeNextToken()B

    move-result p1

    const/4 v2, 0x5

    if-eq p1, v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroidx/media3/common/util/GlProgram;->peekString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput v0, p0, Landroidx/media3/common/util/GlProgram;->programId:I

    iput-object v1, p0, Landroidx/media3/common/util/GlProgram;->uniforms:Ljava/lang/Object;

    return-object p1

    :catchall_0
    move-exception p1

    iput v0, p0, Landroidx/media3/common/util/GlProgram;->programId:I

    iput-object v1, p0, Landroidx/media3/common/util/GlProgram;->uniforms:Ljava/lang/Object;

    throw p1
.end method

.method public peekNextToken()B
    .locals 5

    iget-object v0, p0, Landroidx/media3/common/util/GlProgram;->uniformByName:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v1, p0, Landroidx/media3/common/util/GlProgram;->programId:I

    :goto_0
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/GlProgram;->prefetchOrEof(I)I

    move-result v1

    const/4 v2, -0x1

    const/16 v3, 0xa

    if-eq v1, v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x9

    if-eq v2, v4, :cond_0

    if-eq v2, v3, :cond_0

    const/16 v3, 0xd

    if-eq v2, v3, :cond_0

    const/16 v3, 0x20

    if-eq v2, v3, :cond_0

    iput v1, p0, Landroidx/media3/common/util/GlProgram;->programId:I

    invoke-static {v2}, Lkotlinx/serialization/json/internal/WriteModeKt;->charToTokenClass(C)B

    move-result p0

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iput v1, p0, Landroidx/media3/common/util/GlProgram;->programId:I

    return v3
.end method

.method public peekString()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroidx/media3/common/util/GlProgram;->peekNextToken()B

    move-result v1

    if-eq v1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/util/GlProgram;->consumeString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/util/GlProgram;->uniforms:Ljava/lang/Object;

    return-object v0
.end method

.method public prefetchOrEof(I)I
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/util/GlProgram;->uniformByName:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-ge p1, p0, :cond_0

    return p1

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public removeViewAt(I)V
    .locals 5

    iget-object v0, p0, Landroidx/media3/common/util/GlProgram;->attributes:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$7;

    iget v1, p0, Landroidx/media3/common/util/GlProgram;->programId:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    const/4 v1, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/media3/common/util/GlProgram;->getOffset(I)I

    move-result p1

    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$7;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_0

    :goto_0
    iput v3, p0, Landroidx/media3/common/util/GlProgram;->programId:I

    iput-object v1, p0, Landroidx/media3/common/util/GlProgram;->uniformByName:Ljava/lang/Object;

    return-void

    :cond_0
    :try_start_1
    iput v2, p0, Landroidx/media3/common/util/GlProgram;->programId:I

    iput-object v4, p0, Landroidx/media3/common/util/GlProgram;->uniformByName:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/media3/common/util/GlProgram;->uniforms:Ljava/lang/Object;

    check-cast v2, Landroidx/recyclerview/widget/ChildHelper$Bucket;

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->remove(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v4}, Landroidx/media3/common/util/GlProgram;->unhideViewInternal(Landroid/view/View;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$7;->removeViewAt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_2
    iput v3, p0, Landroidx/media3/common/util/GlProgram;->programId:I

    iput-object v1, p0, Landroidx/media3/common/util/GlProgram;->uniformByName:Ljava/lang/Object;

    throw p1

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot call removeView(At) within removeViewIfHidden"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot call removeView(At) within removeView(At)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public resolveTypeParameter(Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaTypeParameter;)Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;
    .locals 1

    const-string v0, "javaTypeParameter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/media3/common/util/GlProgram;->uniformByName:Ljava/lang/Object;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunction;

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunction;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaTypeParameterDescriptor;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Landroidx/media3/common/util/GlProgram;->attributes:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/extractor/text/pgs/PgsParser;

    iget-object p0, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->inflatedBuffer:Ljava/lang/Object;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/TypeParameterResolver;

    invoke-interface {p0, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/TypeParameterResolver;->resolveTypeParameter(Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaTypeParameter;)Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public skipWhitespaces()I
    .locals 4

    iget v0, p0, Landroidx/media3/common/util/GlProgram;->programId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Landroidx/media3/common/util/GlProgram;->uniformByName:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-eq v2, v3, :cond_1

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1

    const/16 v3, 0xd

    if-eq v2, v3, :cond_1

    const/16 v3, 0x9

    if-ne v2, v3, :cond_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iput v0, p0, Landroidx/media3/common/util/GlProgram;->programId:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Landroidx/media3/common/util/GlProgram;->$r8$classId:I

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JsonReader(source=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/media3/common/util/GlProgram;->uniformByName:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\', currentPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/media3/common/util/GlProgram;->programId:I

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroidx/media3/common/util/GlProgram;->uniforms:Ljava/lang/Object;

    check-cast v1, Landroidx/recyclerview/widget/ChildHelper$Bucket;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", hidden list:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/media3/common/util/GlProgram;->attributeByName:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x6 -> :sswitch_0
    .end sparse-switch
.end method

.method public tryConsumeComma()Z
    .locals 4

    invoke-virtual {p0}, Landroidx/media3/common/util/GlProgram;->skipWhitespaces()I

    move-result v0

    iget-object v1, p0, Landroidx/media3/common/util/GlProgram;->uniformByName:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    if-ge v0, v2, :cond_1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroidx/media3/common/util/GlProgram;->programId:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/media3/common/util/GlProgram;->programId:I

    return v1

    :cond_1
    :goto_0
    return v3
.end method

.method public unexpectedToken(C)V
    .locals 5

    iget-object v0, p0, Landroidx/media3/common/util/GlProgram;->uniformByName:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v1, p0, Landroidx/media3/common/util/GlProgram;->programId:I

    const/4 v2, 0x0

    if-lez v1, :cond_1

    const/16 v3, 0x22

    if-ne p1, v3, :cond_1

    add-int/lit8 v3, v1, -0x1

    :try_start_0
    iput v3, p0, Landroidx/media3/common/util/GlProgram;->programId:I

    invoke-virtual {p0}, Landroidx/media3/common/util/GlProgram;->consumeStringLenient()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput v1, p0, Landroidx/media3/common/util/GlProgram;->programId:I

    const-string v1, "null"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p0, Landroidx/media3/common/util/GlProgram;->programId:I

    add-int/lit8 p1, p1, -0x1

    const-string v0, "Use \'coerceInputValues = true\' in \'Json {}\' builder to coerce nulls if property has a default value."

    const-string v1, "Expected string literal but \'null\' literal was found"

    invoke-virtual {p0, v1, p1, v0}, Landroidx/media3/common/util/GlProgram;->fail(Ljava/lang/String;ILjava/lang/String;)V

    throw v2

    :catchall_0
    move-exception p1

    iput v1, p0, Landroidx/media3/common/util/GlProgram;->programId:I

    throw p1

    :cond_1
    :goto_0
    invoke-static {p1}, Lkotlinx/serialization/json/internal/WriteModeKt;->charToTokenClass(C)B

    move-result p1

    invoke-static {p1}, Lkotlinx/serialization/json/internal/WriteModeKt;->tokenDescription(B)Ljava/lang/String;

    move-result-object p1

    iget v1, p0, Landroidx/media3/common/util/GlProgram;->programId:I

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v1, v4, :cond_3

    if-gez v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    :goto_1
    const-string v0, "EOF"

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Expected "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", but had \'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' instead"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x4

    invoke-static {p0, p1, v3, v2, v0}, Landroidx/media3/common/util/GlProgram;->fail$default(Landroidx/media3/common/util/GlProgram;Ljava/lang/String;ILjava/lang/String;I)V

    throw v2
.end method

.method public unhideViewInternal(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/common/util/GlProgram;->attributeByName:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/media3/common/util/GlProgram;->attributes:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$7;

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$7;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->onLeftHiddenState(Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_0
    return-void
.end method
