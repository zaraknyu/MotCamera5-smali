.class public interface abstract Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract areEqualTypeConstructors(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Z
.end method

.method public abstract argumentsCount(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)I
.end method

.method public abstract asArgumentList(Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeArgumentListMarker;
.end method

.method public abstract asCapturedType(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Lkotlin/reflect/jvm/internal/impl/types/model/CapturedTypeMarker;
.end method

.method public abstract asCapturedTypeUnwrappingDnn(Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/CapturedTypeMarker;
.end method

.method public abstract asFlexibleType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;
.end method

.method public abstract asRigidType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
.end method

.method public abstract asRigidType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
.end method

.method public abstract asTypeArgument(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;
.end method

.method public abstract captureFromArguments(Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
.end method

.method public abstract captureStatus(Lkotlin/reflect/jvm/internal/impl/types/model/CapturedTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/CaptureStatus;
.end method

.method public abstract createFlexibleType(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;
.end method

.method public abstract fastCorrespondingSupertypes(Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)V
.end method

.method public abstract get(Lkotlin/reflect/jvm/internal/impl/types/model/TypeArgumentListMarker;I)Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;
.end method

.method public abstract getArgument(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;I)Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;
.end method

.method public abstract getArgumentOrNull(Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;I)Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;
.end method

.method public abstract getParameter(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;I)Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;
.end method

.method public abstract getType(Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;
.end method

.method public abstract getVariance(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;
.end method

.method public abstract getVariance(Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;
.end method

.method public abstract hasFlexibleNullability(Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;)Z
.end method

.method public abstract hasRecursiveBounds(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Z
.end method

.method public abstract identicalArguments(Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;)Z
.end method

.method public abstract intersectTypes(Ljava/util/ArrayList;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;
.end method

.method public abstract isAnyConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Z
.end method

.method public abstract isCapturedType(Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;)Z
.end method

.method public abstract isClassType(Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;)Z
.end method

.method public abstract isClassTypeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Z
.end method

.method public abstract isCommonFinalClassConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Z
.end method

.method public abstract isDefinitelyNotNullType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z
.end method

.method public abstract isDefinitelyNotNullType(Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;)Z
.end method

.method public abstract isDenotable(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Z
.end method

.method public abstract isDynamic(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)V
.end method

.method public abstract isError(Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;)Z
.end method

.method public abstract isFlexibleWithDifferentTypeConstructors(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z
.end method

.method public abstract isIntegerLiteralType(Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;)Z
.end method

.method public abstract isIntegerLiteralTypeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Z
.end method

.method public abstract isIntersection(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Z
.end method

.method public abstract isMarkedNullable(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z
.end method

.method public abstract isNotNullTypeParameter(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z
.end method

.method public abstract isNothing(Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;)Z
.end method

.method public abstract isNothingConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Z
.end method

.method public abstract isOldCapturedType(Lkotlin/reflect/jvm/internal/impl/types/model/CapturedTypeMarker;)Z
.end method

.method public abstract isProjectionNotNull(Lkotlin/reflect/jvm/internal/impl/types/model/CapturedTypeMarker;)Z
.end method

.method public abstract isStarProjection(Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;)Z
.end method

.method public abstract isStubType(Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;)V
.end method

.method public abstract isStubTypeForBuilderInference(Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;)V
.end method

.method public abstract lowerBound(Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
.end method

.method public abstract lowerBound$1(Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
.end method

.method public abstract lowerBoundIfFlexible(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
.end method

.method public abstract lowerType(Lkotlin/reflect/jvm/internal/impl/types/model/CapturedTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;
.end method

.method public abstract makeDefinitelyNotNullOrNotNull(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;
.end method

.method public abstract parametersCount(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)I
.end method

.method public abstract possibleIntegerTypes(Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;)Ljava/util/Collection;
.end method

.method public abstract projection(Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedTypeConstructor;)Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;
.end method

.method public abstract size(Lkotlin/reflect/jvm/internal/impl/types/model/TypeArgumentListMarker;)I
.end method

.method public abstract substitutionSupertypePolicy(Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext$substitutionSupertypePolicy$2;
.end method

.method public abstract supertypes(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Ljava/util/Collection;
.end method

.method public abstract typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;
.end method

.method public abstract typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;
.end method

.method public abstract typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/CapturedTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedTypeConstructor;
.end method

.method public abstract upperBound(Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
.end method

.method public abstract upperBound$1(Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
.end method

.method public abstract upperBoundIfFlexible(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
.end method

.method public abstract withNullability(Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
.end method

.method public abstract withNullability(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;
.end method

.method public abstract withNullability$1(Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
.end method
