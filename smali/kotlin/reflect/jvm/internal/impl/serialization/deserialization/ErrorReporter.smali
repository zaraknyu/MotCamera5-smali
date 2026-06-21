.class public interface abstract Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ErrorReporter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DO_NOTHING:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoEnumFlags;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoEnumFlags;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoEnumFlags;-><init>(I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ErrorReporter;->DO_NOTHING:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoEnumFlags;

    return-void
.end method


# virtual methods
.method public abstract reportCannotInferVisibility(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)V
.end method

.method public abstract reportIncompleteHierarchy(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;Ljava/util/ArrayList;)V
.end method
