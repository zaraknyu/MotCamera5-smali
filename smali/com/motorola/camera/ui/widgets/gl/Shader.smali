.class public final Lcom/motorola/camera/ui/widgets/gl/Shader;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mAttributes:[Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;

.field public final mProgramHandle:I

.field public final mUniforms:[Landroidx/collection/CircularArray;


# direct methods
.method public constructor <init>(II)V
    .locals 24

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->values()[Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [Landroidx/collection/CircularArray;

    iput-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/Shader;->mUniforms:[Landroidx/collection/CircularArray;

    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;->values()[Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;

    iput-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/Shader;->mAttributes:[Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;

    sget v3, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->sVersion:I

    const-wide v6, -0x100000000L

    const/16 v8, 0x20

    const v9, 0x8b82

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x3

    if-ge v3, v12, :cond_0

    move v5, v11

    const-wide v15, 0xffffffffL

    goto :goto_0

    :cond_0
    int-to-long v13, v1

    shl-long/2addr v13, v8

    and-long/2addr v13, v6

    const-wide v15, 0xffffffffL

    int-to-long v4, v2

    and-long v3, v4, v15

    or-long/2addr v3, v13

    invoke-static {}, Lcom/google/android/gms/tasks/zzr;->getInstance()Lcom/google/android/gms/tasks/zzr;

    move-result-object v5

    iget-object v13, v5, Lcom/google/android/gms/tasks/zzr;->zzb:Ljava/lang/Object;

    check-cast v13, Landroid/util/LongSparseArray;

    monitor-enter v13

    :try_start_0
    iget-object v5, v5, Lcom/google/android/gms/tasks/zzr;->zzb:Ljava/lang/Object;

    check-cast v5, Landroid/util/LongSparseArray;

    invoke-virtual {v5, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/ShaderCache$ProgramBinary;

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v3, :cond_1

    iget-object v4, v3, Lcom/motorola/camera/ui/widgets/gl/ShaderCache$ProgramBinary;->mBinary:Ljava/nio/ByteBuffer;

    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v5

    const-string v13, "glCreateProgram"

    invoke-static {v13}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    if-eqz v5, :cond_2

    iget v3, v3, Lcom/motorola/camera/ui/widgets/gl/ShaderCache$ProgramBinary;->mFormat:I

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v13

    invoke-virtual {v4}, Ljava/nio/Buffer;->limit()I

    move-result v4

    invoke-static {v5, v3, v13, v4}, Landroid/opengl/GLES30;->glProgramBinary(IILjava/nio/Buffer;I)V

    const-string v3, "glProgramBinary"

    invoke-static {v3}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    filled-new-array {v11}, [I

    move-result-object v3

    invoke-static {v5, v9, v3, v11}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    const-string v4, "glGetProgramiv"

    invoke-static {v4}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    aget v3, v3, v11

    if-eq v3, v10, :cond_2

    invoke-static {v5}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    const-string v3, "glDeleteProgram"

    invoke-static {v3}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    :cond_1
    move v5, v11

    :cond_2
    :goto_0
    iput v5, v0, Lcom/motorola/camera/ui/widgets/gl/Shader;->mProgramHandle:I

    if-nez v5, :cond_8

    invoke-static {v1}, Lcom/motorola/camera/ui/widgets/gl/Shader;->getShaderSource(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->getShaderSource(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Shader"

    const v13, 0x8b31

    invoke-static {v13, v3}, Lcom/motorola/camera/ui/widgets/gl/Shader;->loadShader(ILjava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    :goto_1
    move v13, v11

    goto :goto_2

    :cond_3
    const v13, 0x8b30

    invoke-static {v13, v4}, Lcom/motorola/camera/ui/widgets/gl/Shader;->loadShader(ILjava/lang/String;)I

    move-result v4

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v13

    const-string v14, "glCreateProgram"

    invoke-static {v14}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    if-eqz v13, :cond_5

    invoke-static {v13, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    const-string v3, "glAttachShader"

    invoke-static {v3}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    invoke-static {v13, v4}, Landroid/opengl/GLES20;->glAttachShader(II)V

    const-string v3, "glAttachShader"

    invoke-static {v3}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    invoke-static {v13}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const-string v3, "glLinkProgram"

    invoke-static {v3}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    new-array v3, v10, [I

    invoke-static {v13, v9, v3, v11}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    const-string v4, "glGetProgramiv"

    invoke-static {v4}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    aget v3, v3, v11

    if-eq v3, v10, :cond_5

    const-string v3, "Could not link mProgramHandle: "

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v13}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "glGetProgramInfoLog"

    invoke-static {v4}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v13}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    const-string v3, "glDeleteProgram"

    invoke-static {v3}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    :goto_2
    iput v13, v0, Lcom/motorola/camera/ui/widgets/gl/Shader;->mProgramHandle:I

    if-eqz v13, :cond_8

    sget v3, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->sVersion:I

    if-ge v3, v12, :cond_6

    goto :goto_4

    :cond_6
    int-to-long v3, v1

    shl-long/2addr v3, v8

    and-long/2addr v3, v6

    int-to-long v1, v2

    and-long/2addr v1, v15

    or-long/2addr v1, v3

    filled-new-array {v11}, [I

    move-result-object v3

    const v4, 0x8741

    invoke-static {v13, v4, v3, v11}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    const-string v4, "glGetProgramiv"

    invoke-static {v4}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    aget v4, v3, v11

    if-lez v4, :cond_7

    new-array v5, v10, [I

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v23

    aget v18, v3, v11

    const/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v19, 0x0

    move-object/from16 v21, v5

    move/from16 v17, v13

    invoke-static/range {v17 .. v23}, Landroid/opengl/GLES30;->glGetProgramBinary(II[II[IILjava/nio/Buffer;)V

    move-object/from16 v3, v23

    const-string v4, "glGetProgramBinary"

    invoke-static {v4}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/ShaderCache$ProgramBinary;

    aget v5, v21, v11

    invoke-direct {v4, v5, v3}, Lcom/motorola/camera/ui/widgets/gl/ShaderCache$ProgramBinary;-><init>(ILjava/nio/ByteBuffer;)V

    goto :goto_3

    :cond_7
    const/4 v4, 0x0

    :goto_3
    if-eqz v4, :cond_8

    invoke-static {}, Lcom/google/android/gms/tasks/zzr;->getInstance()Lcom/google/android/gms/tasks/zzr;

    move-result-object v3

    iget-object v5, v3, Lcom/google/android/gms/tasks/zzr;->zzb:Ljava/lang/Object;

    check-cast v5, Landroid/util/LongSparseArray;

    monitor-enter v5

    :try_start_1
    iget-object v6, v3, Lcom/google/android/gms/tasks/zzr;->zzb:Ljava/lang/Object;

    check-cast v6, Landroid/util/LongSparseArray;

    invoke-virtual {v6, v1, v2, v4}, Landroid/util/LongSparseArray;->append(JLjava/lang/Object;)V

    iput-boolean v10, v3, Lcom/google/android/gms/tasks/zzr;->zzc:Z

    monitor-exit v5

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_8
    :goto_4
    new-array v1, v10, [I

    iget v12, v0, Lcom/motorola/camera/ui/widgets/gl/Shader;->mProgramHandle:I

    const v2, 0x8b86

    invoke-static {v12, v2, v1, v11}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    const-string v2, "glGetProgramiv"

    invoke-static {v2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    aget v2, v1, v11

    if-lez v2, :cond_c

    move v13, v11

    :goto_5
    aget v2, v1, v11

    if-ge v13, v2, :cond_c

    new-instance v2, Landroidx/collection/CircularArray;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    new-array v3, v10, [I

    sget v4, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->sVersion:I

    const v4, 0x8b87

    invoke-static {v12, v4, v3, v11}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    const-string v4, "glGetProgramiv"

    invoke-static {v4}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    new-array v4, v10, [I

    new-array v5, v10, [I

    aget v14, v3, v11

    new-array v3, v14, [B

    new-array v15, v10, [I

    const/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    move-object/from16 v21, v3

    move-object/from16 v19, v4

    move-object/from16 v17, v5

    invoke-static/range {v12 .. v22}, Landroid/opengl/GLES20;->glGetActiveUniform(III[II[II[II[BI)V

    const-string v4, "glGetActiveUniform"

    invoke-static {v4}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/String;

    move v5, v11

    :goto_6
    if-ge v5, v14, :cond_a

    aget-byte v6, v3, v5

    if-nez v6, :cond_9

    move v14, v5

    goto :goto_7

    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_a
    :goto_7
    invoke-direct {v4, v3, v11, v14}, Ljava/lang/String;-><init>([BII)V

    iput-object v4, v2, Landroidx/collection/CircularArray;->elements:Ljava/lang/Object;

    invoke-static {v12, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    const-string v4, "glGetUniformLocation"

    invoke-static {v4}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    iput v3, v2, Landroidx/collection/CircularArray;->head:I

    aget v3, v19, v11

    iput v3, v2, Landroidx/collection/CircularArray;->tail:I

    aget v3, v17, v11

    iput v3, v2, Landroidx/collection/CircularArray;->capacityBitmask:I

    iget-object v3, v2, Landroidx/collection/CircularArray;->elements:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    sget-object v4, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->mLookupMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    if-eqz v4, :cond_b

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/Shader;->mUniforms:[Landroidx/collection/CircularArray;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput-object v2, v3, v4

    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to locate uniform value \'"

    const-string v2, "\'!"

    invoke-static {v1, v3, v2}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    return-void

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public static getShaderSource(I)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :try_start_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    const-string v2, "Shader"

    const-string v3, "Error reading shader"

    invoke-static {v2, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    invoke-static {v1}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static loadShader(ILjava/lang/String;)I
    .locals 3

    sget v0, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->sVersion:I

    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    const-string v1, "glCreateShader"

    invoke-static {v1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    const-string p1, "glShaderSource"

    invoke-static {p1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const-string p1, "glCompileShader"

    invoke-static {p1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    const/4 p1, 0x1

    new-array p1, p1, [I

    const v1, 0x8b81

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    const-string v1, "glGetShaderiv"

    invoke-static {v1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    aget p1, p1, v2

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Could not compile shader "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Shader"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "glGetShaderInfoLog"

    invoke-static {v1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    const-string p0, "glDeleteShader"

    invoke-static {p0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    return v2

    :cond_0
    return v0
.end method


# virtual methods
.method public final getProgramAttribute(Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;)Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iget-object v1, p1, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;->mName:Ljava/lang/String;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/Shader;->mAttributes:[Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;

    aget-object v0, v2, v0

    if-nez v0, :cond_1

    sget v0, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->sVersion:I

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/Shader;->mProgramHandle:I

    invoke-static {p0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p0

    const-string v0, "glGetAttribLocation"

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    if-ltz p0, :cond_0

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;

    invoke-direct {v0, v1, p0}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aput-object v0, v2, p0

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unknown attribute \'"

    const-string v0, "\'!"

    invoke-static {p1, v1, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-object v0
.end method

.method public final getProgramUniform(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;)Landroidx/collection/CircularArray;
    .locals 2

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/Shader;->mUniforms:[Landroidx/collection/CircularArray;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget-object p0, p0, v0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not get uniform location for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final pushAttributes()V
    .locals 12

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/Shader;->mAttributes:[Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p0, v2

    if-eqz v3, :cond_1

    iget-object v4, v3, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mValues:Ljava/lang/Object;

    check-cast v4, Ljava/nio/FloatBuffer;

    const-string v5, "glVertexAttribPointer"

    if-eqz v4, :cond_0

    invoke-static {v1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindBuffer(I)V

    iget v6, v3, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mIndex:I

    iget v7, v3, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mComponents:I

    iget v8, v3, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mType:I

    iget v10, v3, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mStride:I

    iget-object v4, v3, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mValues:Ljava/lang/Object;

    move-object v11, v4

    check-cast v11, Ljava/nio/FloatBuffer;

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    invoke-static {v5}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    iget v4, v3, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mVbo:I

    invoke-static {v4}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindBuffer(I)V

    iget v6, v3, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mIndex:I

    iget v7, v3, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mComponents:I

    iget v8, v3, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mType:I

    iget v10, v3, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mStride:I

    iget v11, v3, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mOffset:I

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    invoke-static {v5}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    :goto_1
    iget v3, v3, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mIndex:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const-string v3, "glEnableVertexAttribArray"

    invoke-static {v3}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;F)V
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/Shader;->getProgramUniform(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;)Landroidx/collection/CircularArray;

    move-result-object p0

    .line 6
    iget p0, p0, Landroidx/collection/CircularArray;->head:I

    sget p1, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->sVersion:I

    .line 7
    invoke-static {p0, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 8
    const-string p0, "glUniform1f"

    invoke-static {p0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    return-void
.end method

.method public final setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/Shader;->getProgramUniform(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;)Landroidx/collection/CircularArray;

    move-result-object p0

    .line 2
    iget p0, p0, Landroidx/collection/CircularArray;->head:I

    sget p1, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->sVersion:I

    .line 3
    invoke-static {p0, p2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 4
    const-string p0, "glUniform1i"

    invoke-static {p0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    return-void
.end method

.method public final setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;[F)V
    .locals 4

    .line 9
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/Shader;->getProgramUniform(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;)Landroidx/collection/CircularArray;

    move-result-object p0

    .line 10
    iget p1, p0, Landroidx/collection/CircularArray;->head:I

    array-length v0, p2

    .line 11
    iget v1, p0, Landroidx/collection/CircularArray;->tail:I

    const/16 v2, 0x1406

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    const/4 v2, 0x4

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    .line 12
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Cannot assign float-array to incompatible uniform type for uniform \'"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    iget-object p0, p0, Landroidx/collection/CircularArray;->elements:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    .line 14
    const-string v0, "\'!"

    .line 15
    invoke-static {p2, p0, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 16
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    const/16 v1, 0x10

    .line 17
    invoke-virtual {p0, v0, v1}, Landroidx/collection/CircularArray;->checkUniformAssignment(II)V

    .line 18
    div-int/2addr v0, v1

    sget p0, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->sVersion:I

    .line 19
    invoke-static {p1, v0, v3, p2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 20
    const-string p0, "glUniformMatrix4fv"

    invoke-static {p0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    return-void

    :pswitch_1
    const/16 v1, 0x9

    .line 21
    invoke-virtual {p0, v0, v1}, Landroidx/collection/CircularArray;->checkUniformAssignment(II)V

    .line 22
    div-int/2addr v0, v1

    sget p0, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->sVersion:I

    .line 23
    invoke-static {p1, v0, v3, p2, v3}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZ[FI)V

    .line 24
    const-string p0, "glUniformMatrix3fv"

    invoke-static {p0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    return-void

    .line 25
    :pswitch_2
    invoke-virtual {p0, v0, v2}, Landroidx/collection/CircularArray;->checkUniformAssignment(II)V

    .line 26
    div-int/2addr v0, v2

    sget p0, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->sVersion:I

    .line 27
    invoke-static {p1, v0, v3, p2, v3}, Landroid/opengl/GLES20;->glUniformMatrix2fv(IIZ[FI)V

    .line 28
    const-string p0, "glUniformMatrix2fv"

    invoke-static {p0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    return-void

    .line 29
    :pswitch_3
    invoke-virtual {p0, v0, v2}, Landroidx/collection/CircularArray;->checkUniformAssignment(II)V

    .line 30
    div-int/2addr v0, v2

    sget p0, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->sVersion:I

    .line 31
    invoke-static {p1, v0, p2, v3}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    .line 32
    const-string p0, "glUniform4fv"

    invoke-static {p0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    return-void

    :pswitch_4
    const/4 v1, 0x3

    .line 33
    invoke-virtual {p0, v0, v1}, Landroidx/collection/CircularArray;->checkUniformAssignment(II)V

    .line 34
    div-int/2addr v0, v1

    sget p0, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->sVersion:I

    .line 35
    invoke-static {p1, v0, p2, v3}, Landroid/opengl/GLES20;->glUniform3fv(II[FI)V

    .line 36
    const-string p0, "glUniform3fv"

    invoke-static {p0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    return-void

    :pswitch_5
    const/4 v1, 0x2

    .line 37
    invoke-virtual {p0, v0, v1}, Landroidx/collection/CircularArray;->checkUniformAssignment(II)V

    .line 38
    div-int/2addr v0, v1

    sget p0, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->sVersion:I

    .line 39
    invoke-static {p1, v0, p2, v3}, Landroid/opengl/GLES20;->glUniform2fv(II[FI)V

    .line 40
    const-string p0, "glUniform2fv"

    invoke-static {p0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 41
    invoke-virtual {p0, v0, v1}, Landroidx/collection/CircularArray;->checkUniformAssignment(II)V

    .line 42
    sget p0, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->sVersion:I

    .line 43
    invoke-static {p1, v0, p2, v3}, Landroid/opengl/GLES20;->glUniform1fv(II[FI)V

    .line 44
    const-string p0, "glUniform1fv"

    invoke-static {p0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x8b50
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x8b5a
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final use()V
    .locals 1

    sget v0, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->sVersion:I

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/Shader;->mProgramHandle:I

    invoke-static {p0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string p0, "glUseProgram"

    invoke-static {p0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    return-void
.end method
